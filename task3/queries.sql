DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Products;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price INT,
    Stock INT
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT
);

ALTER TABLE Customers ADD Address VARCHAR(100);
ALTER TABLE Products MODIFY ProductName VARCHAR(150);
ALTER TABLE Orders ADD Amount INT;

INSERT INTO Customers (Name, Email, Phone, Address)
VALUES
('Ali','a@mail.com','111','Aktobe'),
('Dana','d@mail.com','222','Almaty'),
('Arman','ar@mail.com','333','Astana'),
('Aruzhan','au@mail.com','444','Shymkent'),
('Nurlan','n@mail.com','555','Karaganda');

INSERT INTO Products (ProductName, Price, Stock)
VALUES
('Laptop',500000,10),
('Phone',250000,20),
('Tablet',150000,15),
('Headphones',30000,50),
('Mouse',10000,100);

INSERT INTO Orders (CustomerID, ProductID, Quantity, Amount)
VALUES
(1,1,1,1),
(2,2,2,2),
(3,3,1,1),
(4,4,3,3),
(5,5,5,5);

SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;



