CREATE TABLE Books(
    bookID INT PRIMARY KEY,
    bookName VARCHAR(255),
    USN VARCHAR(255),
    Author VARCHAR(255),
    price DECIMAL(10,2)
);
INSERT INTO Books(bookID, bookName, USN, Author, price) VALUES
(1001, 'Book_One', 'USN001', 'Author1', 2000),
(1002, 'Book_Two', 'USN002', 'Author2', 3000),
(1003, 'Book_Three', 'USN003', 'Author3', 3500),
(1004, 'Book_Four', 'USN004', 'Author4', 4000),
(1005, 'Book_Five', 'USN005', 'Author5', 5000);

SELECT * FROM Books;