import datetime
import mysql.connector
import random
import getpass

from database import add_member, member_login


# Modify the "new_member_registration" option to use the new function
def new_member_registration():
    print("New Member Registration")
    firstname = input("First name: ")
    lastname = input("Last name: ")
    address = input("Address: ")
    city = input("City: ")
    state = input("State: ")
    zip = input("Zip code: ")
    phone = input("Phone number: ")
    email = input("Email: ")
    password = getpass.getpass("Password (Its hidden): ")
    add_member(firstname, lastname, address, city, state, zip, phone, email, password)


# Update the main menu to use the modified "new_member_registration" function
def main():
    while True:
        print("Welcome to the book store!")
        print("1. Member Login")
        print("2. New Member Registration")
        print("3. Quit")
        option = input("Type in your option: ")

        if option == "1":
            member_login()
        elif option == "2":
            new_member_registration()
        elif option == "3":
            print("Goodbye!")
            break
        else:
            print("Invalid option. Please try again.")
main()