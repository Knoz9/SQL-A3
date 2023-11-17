import datetime
import mysql.connector

def get_cart_contents(cursor, userid):
    query = """
        SELECT c.isbn, b.title, c.qty, b.price
        FROM cart c
        INNER JOIN books b ON c.isbn = b.isbn
        WHERE c.userid = %s
    """
    cursor.execute(query, (userid,))
    return cursor.fetchall()

def print_cart_contents(cart_contents):
    print("ISBN\t\tTitle\t\t\t\tQuantity\tTotal")
    print("-" * 80)
    total = 0
    for row in cart_contents:
        isbn, title, quantity, price = row
        subtotal = quantity * price
        print(f"{isbn}\t{title[:25]:25}\t{quantity}\t\t${subtotal:.2f}")
        total += subtotal
    print("-" * 80)
    print(f"Total\t\t\t\t\t\t\t\t${total:.2f}")
    print("-" * 80)
    return total

def get_user_address(cursor, userid):
    query = """
        SELECT address, city, state, zip
        FROM members
        WHERE userid = %s
    """
    cursor.execute(query, (userid,))
    return cursor.fetchone()

def insert_order(cursor, userid, address, cnx):
    query = """
        INSERT INTO orders (userid, received, shipAddress, shipCity, shipState, shipZip)
        VALUES (%s, CURDATE(), %s, %s, %s, %s)
    """
    cursor.execute(query, (userid, address[0], address[1], address[2], address[3]))
    cnx.commit()
    return cursor.lastrowid

def insert_order_details(cursor, ono, cart_contents, cnx):
    query = """
        INSERT INTO odetails (ono, isbn, qty, price)
        VALUES (%s, %s, %s, %s)
    """
    for row in cart_contents:
        isbn, _, quantity, price = row
        subtotal = quantity * price
        cursor.execute(query, (ono, isbn, quantity, subtotal))
        cnx.commit()

def delete_cart_contents(cursor, userid, cnx):
    query = """
        DELETE FROM cart
        WHERE userid = %s
    """
    cursor.execute(query, (userid,))
    cnx.commit()

def checkout(userid):
    try:
        cnx = mysql.connector.connect(user='root', password='', host='localhost', database='book_store')
        with cnx, cnx.cursor() as cursor:
            cart_contents = get_cart_contents(cursor, userid)
            if not cart_contents:
                print("\nThere is nothing in your cart!\n")
                return
            total = print_cart_contents(cart_contents)
            choice = input("Proceed to checkout? (Y/N): ")
            if choice.lower() != "y":
                return
            address = get_user_address(cursor, userid)
            ono = insert_order(cursor, userid, address, cnx)
            insert_order_details(cursor, ono, cart_contents, cnx)
            delete_cart_contents(cursor, userid, cnx)
            print(f"\n\t\t\t\tInvoice for Order no.{ono}\n")
            print("Shipping Address:")
            print(f"{address[0]}\n{address[1]}, {address[2]} {address[3]}")
            print("\n")
            print_cart_contents(cart_contents)
            print("Estimated Time for delivery: ", datetime.date.today() + datetime.timedelta(days=7))
    except mysql.connector.Error as err:
        print(err.msg)

if __name__ == '__main__':
    userid = input("Enter User ID: ")
    checkout(userid)
