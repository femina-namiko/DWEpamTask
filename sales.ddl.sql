DROP TABLE SalesDB.Sales.Product
DROP TABLE SalesDB.Sales.Category
DROP TABLE SalesDB.Sales.Sales
DROP TABLE SalesDB.Sales.Customer
DROP TABLE SalesDB.Sales.Calendar

/* ************************CREATING TABLES********************** */

--Existed dimension <Product>
CREATE TABLE SalesDB.Sales.Product
(
ID INT PRIMARY KEY IDENTITY(1,1),
ProductName VARCHAR (50) NOT NULL,
CategoryName VARCHAR (50) NOT NULL
)

--Existed dimension <Category>
CREATE TABLE SalesDB.Sales.Category
(
ID INT PRIMARY KEY IDENTITY(1,1),
CategoryName VARCHAR (50) NOT NULL,
Description VARCHAR (50)
)

--Existed fact table <Sales>
CREATE TABLE SalesDB.Sales.Sales
(
ID INT PRIMARY KEY IDENTITY(1,1),
ProductID INT NOT NULL,
CategoryID INT NOT NULL,
SalesValues INT
)

--New added dimension <Customer>
CREATE TABLE SalesDB.Sales.Customer
(
ID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR (50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
Address VARCHAR (50),
City VARCHAR (50),
Country VARCHAR (50)
)

--New added dimension <Calendar>
CREATE TABLE SalesDB.Sales.Calendar
(
ID INT PRIMARY KEY IDENTITY(1,1),
CalendarDate VARCHAR (50) NOT NULL,
CalendarYear VARCHAR (50),
CalendarQuarter VARCHAR (50),
CalendarMonth VARCHAR (50)
)

--Adding FK CustomerID to the table of facts  
ALTER TABLE SalesDB.Sales.Sales
ADD CustomerID INT

--Adding FK CalendarID to the table of facts
ALTER TABLE SalesDB.Sales.Sales
ADD CalendarID INT 

/* ****************CREATING REFERENCES******************* */

-- Reference: sales_product between tables "sales" and "product"
ALTER TABLE SalesDB.Sales.Sales ADD CONSTRAINT sales_product
    FOREIGN KEY (ProductID)
    REFERENCES SalesDB.Sales.Product (ID)

-- Reference: sales_category
ALTER TABLE SalesDB.Sales.Sales ADD CONSTRAINT sales_category
    FOREIGN KEY (CategoryID)
    REFERENCES SalesDB.Sales.Category (ID)

-- Reference: sales_customer
ALTER TABLE SalesDB.Sales.Sales ADD CONSTRAINT sales_customer
    FOREIGN KEY (CustomerID)
    REFERENCES SalesDB.Sales.Customer (ID);

-- Reference: sales_calendar
ALTER TABLE SalesDB.Sales.Sales ADD CONSTRAINT sales_calendar
    FOREIGN KEY (CalendarID)
    REFERENCES SalesDB.Sales.Calendar (ID);
