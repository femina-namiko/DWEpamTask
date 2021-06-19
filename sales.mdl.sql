/* ************************DELETING DATA*********************** */
DELETE FROM SalesDB.Sales.Sales
DELETE FROM SalesDB.Sales.Product
DELETE FROM SalesDB.Sales.Category
DELETE FROM SalesDB.Sales.Customer
DELETE FROM SalesDB.Sales.Calendar

/* ************************INSERTING DATA*********************** */

/*Data for the table <Product> */

INSERT INTO SalesDB.Sales.Product (ID, ProductCode, ProductName, CategoryName) VALUES (1, 'PC001', 'PR1', 'Bike')
INSERT INTO SalesDB.Sales.Product (ID, ProductCode, ProductName, CategoryName) VALUES (2, 'PC002', 'PR2', 'Bike')
INSERT INTO SalesDB.Sales.Product (ID, ProductCode, ProductName, CategoryName) VALUES (3, 'PC003', 'PR3', 'Book')
INSERT INTO SalesDB.Sales.Product (ID, ProductCode, ProductName, CategoryName) VALUES (4, 'PC004', 'PR4', 'Book')

/*Data for the table <Category> */

INSERT INTO SalesDB.Sales.Category (ID, CategoryName, Description) VALUES (1, 'Bike', 'Vehicle')
INSERT INTO SalesDB.Sales.Category (ID, CategoryName, Description) VALUES (2, 'Book', 'Medium')

/*Data for the table <Customer> */

INSERT INTO SalesDB.Sales.Customer (ID, FirstName, LastName, Address, City, Country, CustomerCode) VALUES (1, 'Adam', 'Nowack', 'Kromera str. 15', 'Wroclaw', 'Poland', 100001)
INSERT INTO SalesDB.Sales.Customer (ID, FirstName, LastName, Address, City, Country, CustomerCode) VALUES (2, 'Sarah', 'Rocket', 'Hallera str. 24', 'Krakow', 'Poland', 100002)
INSERT INTO SalesDB.Sales.Customer (ID, FirstName, LastName, Address, City, Country, CustomerCode) VALUES (3, 'Zurab', 'Amamed', 'Titan sqr. 7', 'Berlin', 'Germany',  100003)
INSERT INTO SalesDB.Sales.Customer (ID, FirstName, LastName, Address, City, Country, CustomerCode) VALUES (4, 'Kristina', 'Ton', 'Kobozeva str. 86', 'Donetsk', 'Ukraine', 100004)

/*Data for the table <Calendar> */

INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210105, '2021-01-05', 2021, 1, 1)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210123, '2021-01-23', 2021, 1, 1)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210211, '2021-02-11', 2021, 1, 2)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210219, '2021-02-19', 2021, 1, 2)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210301, '2021-03-01', 2021, 1, 3)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210330, '2021-03-30', 2021, 1, 3)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210412, '2021-04-12', 2021, 2, 4)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210420, '2021-04-20', 2021, 2, 4)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210505, '2021-05-05', 2021, 2, 5)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210510, '2021-05-10', 2021, 2, 5)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210615, '2021-06-25', 2021, 2, 6)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210628, '2021-06-28', 2021, 2, 6)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210707, '2021-07-07', 2021, 3, 7)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210713, '2021-07-13', 2021, 3, 7)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210814, '2021-08-14', 2021, 3, 8)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210824, '2021-08-24', 2021, 3, 8)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210901, '2021-09-01', 2021, 3, 9)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20210930, '2021-09-30', 2021, 3, 9)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20211018, '2021-10-18', 2021, 4, 10)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20211029, '2021-10-29', 2021, 4, 10)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20211103, '2021-11-03', 2021, 4, 11)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20211117, '2021-11-17', 2021, 4, 11)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20211208, '2021-12-08', 2021, 4, 12)
INSERT INTO SalesDB.Sales.Calendar (ID, CalendarDate, CalendarYear, CalendarQuarter, CalendarMonth) VALUES (20211231, '2021-12-31', 2021, 4, 12)

/*Data for the table <Sales> */

INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (1, 1, 1, 1000, 1, 20210123);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (2, 1, 1, 1200, 2, 20210211);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (3, 1, 1, 800, 2, 20210219);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (4, 1, 1, 1050, 2, 20210301);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (5, 1, 1, 1120, 2, 20210301);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (6, 1, 1, 1200, 3, 20210211);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (7, 1, 1, 700, 3, 20210219);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (8, 1, 1, 1510, 3, 20210330);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (9, 1, 1, 1210, 3, 20210301);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (10, 1, 1, 1005, 3, 20210412);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (11, 1, 1, 800, 4, 20210105);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (12, 1, 1, 1050, 4, 20210412);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (13, 1, 1, 1120, 4, 20210420);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (14, 1, 1, 1200, 4, 20210510);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (15, 3, 2, 20, 1, 20210211);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (16, 3, 2, 37, 1, 20210330);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (17, 3, 2, 37, 1, 20210330);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (18, 3, 2, 32, 1, 20210615);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (19, 3, 2, 27, 2, 20210615);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (20, 3, 2, 66, 3, 20210123);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (21, 3, 2, 34, 3, 20210420);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (22, 3, 2, 17, 3, 20210505);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (23, 3, 2, 26, 4, 20210505);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (24, 3, 2, 28, 4, 20210510);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (25, 4, 2, 16, 1, 20210211);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (26, 4, 2, 22, 1, 20210412);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (27, 4, 2, 22, 1, 20210505);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (28, 4, 2, 75, 2, 20210219);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (29, 4, 2, 45, 2, 20210301);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (30, 4, 2, 45, 2, 20210105);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (31, 4, 2, 20, 3, 20210105);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (32, 4, 2, 20, 3, 20210412);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (33, 4, 2, 20, 3, 20210505);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (34, 4, 2, 50, 4, 20210211);
INSERT INTO SalesDB.Sales.Sales (ID, ProductID, CategoryID, SalesValues, CustomerID, CalendarID) VALUES (35, 4, 2, 70, 4, 20210420);
