CREATE DATABASE ShopperShop;
USE ShopperShop;

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);


INSERT INTO Customers VALUES
(1, 'Nazmul', 'Dhaka'),
(2, 'Rahim', 'Khulna'),
(3, 'Karim', 'Chittagong');


-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 1),
(102, 1, 'Mouse', 2),
(103, 2, 'Keyboard', 1);

-- INNER JOIN Query

SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.ProductName,
    Orders.Quantity
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;




-- LEFT JOIN Query

SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.ProductName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;


SELECT
    c.CustomerID,
    c.CustomerName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


-- Create Database
CREATE DATABASE mall;
USE mall;

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Phone VARCHAR(20)
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert Customers
INSERT INTO Customers (CustomerName, City, Phone)
VALUES
('Nazmul', 'Dhaka', '01711111111'),
('Rahim', 'Khulna', '01822222222'),
('Karim', 'Chittagong', '01933333333'),
('Salma', 'Rajshahi', '01644444444');

-- Insert Products
INSERT INTO Products (ProductName, Price)
VALUES
('Laptop', 65000.00),
('Mouse', 500.00),
('Keyboard', 1200.00),
('Monitor', 15000.00);

-- Insert Orders
INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate)
VALUES
(1, 1, 1, '2026-06-01'),
(1, 2, 2, '2026-06-02'),
(2, 3, 1, '2026-06-03');

-- View All Customers
SELECT * FROM Customers;

-- View All Products
SELECT * FROM Products;

-- View All Orders
SELECT * FROM Orders;

-- INNER JOIN Example
SELECT
    c.CustomerName,
    p.ProductName,
    o.Quantity,
    o.OrderDate
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
INNER JOIN Products p
ON o.ProductID = p.ProductID;

-- LEFT JOIN Example
SELECT
    c.CustomerID,
    c.CustomerName,
    c.City,
    p.ProductName,
    o.Quantity
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
LEFT JOIN Products p
ON o.ProductID = p.ProductID;

-- Customers Without Orders
SELECT
    c.CustomerID,
    c.CustomerName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


-- left join
CREATE DATABASE sk;
USE Sk;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(100),
    Quantity INT
);

-- insert data

INSERT INTO Customers VALUES
(1, 'Nazmul', 'Dhaka'),
(2, 'Rahim', 'Khulna'),
(3, 'Karim', 'Chittagong');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 1),
(102, 1, 'Mouse', 2),
(103, 2, 'Keyboard', 1),
(104, 5, 'Monitor', 1);

SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.ProductName
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- full

CREATE DATABASE full;
USE full;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(100)
);

-- insert

INSERT INTO Customers VALUES
(1, 'Nazmul', 'Dhaka'),
(2, 'Rahim', 'Khulna'),
(3, 'Karim', 'Chittagong'),
(4, 'Salma', 'Rajshahi');

INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 5, 'Monitor');

SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.ProductName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID

UNION

SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.ProductName
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;