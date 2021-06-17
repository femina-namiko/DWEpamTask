DROP TABLE SalesDB.Sales.Product
DROP TABLE SalesDB.Sales.Category
DROP TABLE SalesDB.Sales.Sales
DROP TABLE SalesDB.Sales.Customer

/* ************************CREATING TABLES********************** */

CREATE TABLE SalesDB.Sales.Product
(
ID INT PRIMARY KEY IDENTITY(1,1),
ProductName VARCHAR (50) NOT NULL,
CategoryName VARCHAR (50) NOT NULL
)

CREATE TABLE SalesDB.Sales.Category
(
ID INT PRIMARY KEY IDENTITY(1,1),
CategoryName VARCHAR (50) NOT NULL,
Description VARCHAR (50)
)

CREATE TABLE SalesDB.Sales.Sales
(
ID INT PRIMARY KEY IDENTITY(1,1),
ProductID INT NOT NULL,
CategoryID INT NOT NULL,
SalesValues INT
)

CREATE TABLE SalesDB.Sales.Customer
(
ID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR (50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
Address VARCHAR (50),
City VARCHAR (50),
Country VARCHAR (50)
)

ALTER TABLE SalesDB.Sales.Sales
ADD CustomerID INT

/* ****************CREATING REFERENCES******************* */

-- Reference: city_country (table: city)
ALTER TABLE SalesDB.Sales.Sales ADD CONSTRAINT sales_product
    FOREIGN KEY (ProductID)
    REFERENCES SalesDB.Sales.Product (ID)

ALTER TABLE SalesDB.Sales.Sales ADD CONSTRAINT sales_category
    FOREIGN KEY (CategoryID)
    REFERENCES SalesDB.Sales.Category (ID)

ALTER TABLE SalesDB.Sales.Sales ADD CONSTRAINT sales_customer
    FOREIGN KEY (CustomerID)
    REFERENCES SalesDB.Sales.Customer (ID);
