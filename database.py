import mysql.connector

from checkout import checkout
from search import search_author_title, browse_by_subject
import getpass

# Define function to insert new member into the database
import mysql.connector

from checkout import checkout
from search import search_author_title, browse_by_subject

# Define function to connect to the database
def connect_to_database():
    return mysql.connector.connect(user='root', password='', host='localhost', database='book_store')

def add_member(firstname, lastname, address, city, state, zip, phone, email, password):
    with connect_to_database() as cnx:
        cursor = cnx.cursor()

        # Check if a member with the given email already exists in the database
        query = "SELECT * FROM members WHERE email = %s"
        cursor.execute(query, (email,))
        result = cursor.fetchone()

        if result is not None:
            print("Error: A member with that email already exists")
            return

        # Define the SQL INSERT statement for the members table
        add_member_query = "INSERT INTO members (fname, lname, address, city, state, zip, phone, email, password, creditcardtype, creditcardnumber) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

        # Execute the INSERT statement with the input parameters
        member_data = (firstname, lastname, address, city, state, zip, phone, email, password, None, None)
        cursor.execute(add_member_query, member_data)

        # Commit the changes and close the connection
        cnx.commit()
        print("Member added successfully!")

def verify_login(email, password):
    with connect_to_database() as cnx:
        cursor = cnx.cursor()

        # Define the SQL SELECT statement for the members table
        query = "SELECT * FROM members WHERE email = %s"

        # Execute the SELECT statement with the input parameters
        cursor.execute(query, (email,))

        # Get the result of the SELECT statement
        result = cursor.fetchone()

        # Check if the user was found in the database
        if result is None:
            return False

        # Check if the password entered by the user matches the password stored in the database
        if result[9] == password:
            return True
        else:
            return False

def member_login():
    # Get user input for login information
    email = input("Enter email: ")
    password = getpass.getpass("Password (Its hidden): ")

    # Verify login information
    if verify_login(email, password):
        print("Login successful!")

        # Retrieve user ID from database based on email address
        with connect_to_database() as cnx:
            cursor = cnx.cursor()
            query = "SELECT userid FROM members WHERE email = %s"
            cursor.execute(query, (email,))
            result = cursor.fetchone()
            userid = result[0]

        # Display member menu
        while True:
            print("Member Menu")
            print("1. Find book by subject")
            print("2. Search with Author/Title")
            print("3. Checkout")
            print("4. Logout")
            option = input("Type in your option: ")

            if option == "1":
                browse_by_subject(userid)  # Pass userid to browse_by_subject function
            elif option == "2":
                search_author_title(userid)
            elif option == "3":
                checkout(userid)
            elif option == "4":
                print("Logged out!")
                break
            else:
                print("Invalid option. Please try again.")
    else:
        print("Invalid login information. Please try again.")
