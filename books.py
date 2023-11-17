import mysql.connector

def displaybooks(books, quantity, userid):
    with mysql.connector.connect(user='root', password='',
                              host='localhost', database='book_store') as cnx:
        flag = 0
        with cnx.cursor() as cursor:
            print(len(books), "Books found")
            for i, book in enumerate(books):
                if flag > 0:
                    flag = flag - 1
                    continue
                else:
                    for j in range(quantity):
                        index = i + j
                        if index < len(books):
                            print(f"{index+1}. Author: {books[index][1]}\n   Title: {books[index][2]}\n   ISBN: {books[index][0]}\n   Subject: {books[index][4]}")
                    choice = input("\nEnter ISBN to add book to cart\nPress enter to go back\nPress N to see more books\n")
                    if choice == "":
                        return
                    elif choice == "n":
                        flag = quantity - 1
                        continue
                    else:
                        isbn = choice
                        cursor.execute("SELECT * FROM books WHERE isbn = %s", (isbn,))
                        book = cursor.fetchone()
                        if book:
                            qty = int(input("Enter quantity: "))
                            cursor.execute("INSERT INTO Cart (userid, isbn, qty) VALUES (%s, %s, %s)", (userid, isbn, qty))
                            cnx.commit()
                            print("Book added to cart!")
                            return
                        else:
                            print("ISBN not found in database.")