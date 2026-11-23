
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    City VARCHAR(50),
    Email VARCHAR(100)
);
CREATE TABLE Products (
    Product_ID VARCHAR(10) PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(50),
    Price NUMERIC(10,2)
);
CREATE TABLE Sales (
    Sale_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID INT,
    Product_ID VARCHAR(10),
    Quantity INT,
    Sale_Date DATE,

    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID),

    FOREIGN KEY (Product_ID)
        REFERENCES Products(Product_ID)
);
Select*from Customers;
select * from Products;
select * from Sales;
INSERT INTO Customers
VALUES (106, 'Arjun', 'Mumbai', 'arjun@gmail.com');
UPDATE Customers
SET City = 'Pune'
WHERE Customer_ID = 106;
DELETE FROM Customers
WHERE Customer_ID = 106;
SELECT *
FROM Customers
WHERE City = 'Hyderabad';



