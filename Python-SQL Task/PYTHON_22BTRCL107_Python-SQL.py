# 22BTRCL107 - NEEV SHAH
import mysql.connector

mydb = mysql.connector.connect(
    host='localhost',
    user='root',
    password='1234',
    database='Library'
)
cursor = mydb.cursor()

#STEP-4: Fetch all the records
print("Fetching all records:")
cursor.execute("SELECT * FROM Books")
records = cursor.fetchall()
for record in records:
    print(record)

#STEP-5: Update the price of the book with ID 1001
print("\n\n\nUpdating the price of the book with ID 1001:")
book_id = 1001
new_price = 2200
cursor.execute("UPDATE Books SET price = %s WHERE bookID = %s", (new_price, book_id))
mydb.commit()
cursor.execute("SELECT * FROM Books")
records = cursor.fetchall()
for record in records:
    print(record)

#STEP-6: Delete the book with ID 1
print("\n\n\nDeleting the book with ID 1001:")
book_id_2 = 1001
cursor.execute("DELETE FROM Books WHERE bookID = %s", (book_id_2,))
mydb.commit()
cursor.execute("SELECT * FROM Books")
records = cursor.fetchall()
for record in records:
    print(record)


cursor.close()
mydb.close()
