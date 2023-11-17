import mysql.connector
from books import displaybooks

def get_connection():
    return mysql.connector.connect(user='root', password='',
                                    host='localhost', database='book_store')

def search_author_title(userid):
    connection = get_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM Books")
    books = cursor.fetchall()
    print("\n1. Author Search")
    print("2. Title Search")
    print("3. Go Back to Main Menu")

    option = input("\nType in your option: ")

    if option == "1":
        author = input("\nEnter author name or part of the name: ")
        matching_books = [book for book in books if author.lower() in book[1].lower()]
        displaybooks(matching_books, 3, userid)

    elif option == "2":
        title = input("\nEnter title or part of the title: ")
        matching_books = [book for book in books if title.lower() in book[2].lower()]
        displaybooks(matching_books, 3, userid)

    elif option == "3":
        return

    else:
        print("Invalid option. Please try again.")
        search_author_title(userid)

    connection.close()

def browse_by_subject(userid):
    connection = get_connection()
    cursor = connection.cursor()

    cursor.execute("SELECT DISTINCT subject FROM Books ORDER BY subject ASC")
    subjects = cursor.fetchall()

    # Display the list of subjects to the user
    print("Browse by Subject")
    for i, subject in enumerate(subjects):
        print(f"{i+1}. {subject[0]}")

    # Prompt the user to enter their chosen subject
    choice = input("Enter your choice: ")
    subject = subjects[int(choice)-1][0]

    # Retrieve all books with the chosen subject
    cursor.execute("SELECT * FROM Books WHERE subject=%s", (subject,))
    books = cursor.fetchall()

    # Display the details of the first two books
    displaybooks(books, 2, userid)

    connection.close()
