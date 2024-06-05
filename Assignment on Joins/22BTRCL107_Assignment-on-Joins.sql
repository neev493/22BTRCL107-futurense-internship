-- TASK1
SELECT o.OrderID, c.CustomerID, c.CustomerName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;


-- TASK2
SELECT o.OrderID, c.CustomerID, c.CustomerName, concat(e.FirstName, " ", e.LastName) AS emp_name
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID;


-- TASK3
SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID;


-- TASK4
SELECT o.OrderID, c.CustomerName, s.ShipperName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Shippers s ON o.ShipperID = s.ShipperID;


-- TASK5
SELECT e.EmployeeID, concat(e.FirstName," ", e.LastName) as EmpName
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.OrderID IS NULL;



-- TASK6
SELECT p.ProductID, p. ProductName, od.Quantity
FROM Products p 
INNER JOIN order_details od ON p.ProductID = od.productid 
ORDER BY od.quantity DESC LIMIT 5;


-- TASK7
SELECT c.CustomerName, o.orderid
FROM Customers c 
INNER JOIN orders o ON c.customerid = c.customerid
WHERE year(o.orderdate) = 2023;


-- TASK8
SELECT s.SupplierID, s.SupplierName, p.ProductName
FROM Suppliers s
INNER JOIN Products p ON s.SupplierID = p.SupplierID;

-- TASK9
SELECT o.orderid,c.customername , p.productid, p.productname, p.supplierid, p.categoryid, p.unit, p.price
FROM orders o 
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN order_details od on o.orderid = od.orderid
INNER JOIN products p on od.productid = p.productid;


-- challenge tasks
SELECT e1.EmployeeID, e1.LastName, MONTH(e1.BirthDate) AS BirthMonth
FROM Employees e1
WHERE MONTH(e1.BirthDate) = MONTH('2024-05-22');
