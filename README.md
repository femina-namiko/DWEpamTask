# DWEpamTask

This is an illustration of star schema data model on an imaginary data warehouse for interview task at EPAM.

/**************************************************** TASK ********************************************************/
1. Considering the star schema model of DW with three tables: "Product", "Category", "Sales"
  a) Add at least one more dimension to the model
  b) Add Business Keys (Natural keys) to your dimensions
  c) Include the new dimension in the fact table as well
2. Create a free account on any git provider – i.e. git hub, unless you already have
3. Choose some database in order to execute your scripts, i.e. SQL Server
4. Create DDL scripts that implement your data model and add them to git
5. Create DML scripts that populate your model with some test data and add them to git
6. Create a simple stored procedure, that would check if there are any duplicates in the PRODUCT table and delete them if occur. Add to git as well
7. Prepare a simple Power BI dashboard that would present some analytics about your data

/*********************************************** PROVIDING STEPS ************************************************/

 1a) At the beginning I've already had the star schema model of DW with fact table "Sales" and two demancions: "Product" and "Category". The fact table "Sales" that holds the measures of sales process has already been defined. The columns for every foreign key that links the measures to the corresponding dimension rows has already been provided . Also here, a surrogate key is introduced in the fact table that will become the primary key of the table

Before adding more dimension let's identify candidate business processes that want to be covered by this data warehouse and will be interesting to key users to analyze and run reports on. According to the what I've already had I suggested to add dimencions "Customers" and "Calendar" for starting with the process analyzing product sales (by any kind of time) that has a high business value, hence very popular for most organizations. Once business process was chosen, let's describe it in terms of measures. The most trivial measure is the counting measure. A measure has no meaning on its own. Let's choose dimension attributes. Sales amounts are relevant for products, and for customers, on a given date, and maybe for sales representatives. The values of these attributes can be used to filter your measures, to drill-down/up and to categorize measures in columns or rows.

The "Calendar" dimension table contains all the dates from some point in the past (ex. 2021 Jan 1) up to some point in the future (ex. 2021 Dec 31) - a period relevant to business users.   

 1b) The business key is the attribute that is known in the operational system by the business users. 

- The business key in "Product" dimension let's use the string format of product code such PC0000 (It is meaningfull to get this information from bussiness side. It should be information that is undestandable for bussiness)
- The business key in "Customer" dimension let's use the interger format 100000. (it is smth like number of customer's club card)
- The business key in "Calendar" dimension for easy query development, an integer is provided taking the format YYYYMMDD and it maybe primary key simultaneously.

1c) It's important to introduce also a surrogate key in the fact table. Sooner or later a fact table might in turn become a dimension table for another fact table. E.g. a fact table that holds measures for sales might act as a dimension for a fact table holding measures for individual transactions. Note: the Calendar dimension, as an exception, has no surrogate key due to the reason that the calendar table is populated with records only once at the start of your data warehouse project.

At least let's see the star model:
![SalesDBModel](https://user-images.githubusercontent.com/39432736/122680652-9493c300-d1f0-11eb-913b-3540431d5d4e.png)


2. I have already had account "femina-namiko" at github.com
3. The MS SQL Server Management Studio had already been installed.
4. The DDL scripts that implement my data model has been being added to git as <sales.ddl.sql>
5. The DML scripts that populate my model with some test data has been being added to git as <sales.dml.sql>
6. The stored procedure, that checks if there are any duplicates in the PRODUCT table and delete them if occure has been being added to git as <DelDubProduct Procedure>. According to it I suggest looking for the same name and category of product. The ProductCode is unique and if the product with difference ProductCode but the same Name and Category are occured that's mean smth wrong. This procedured also doesn't covered the choose of right row from the duplicated and references with fact table.

7.At first I've downloaded the data from MS SQL Server to the PowerBI Desktop. According to the data with I have I've desided to prepare dashboard with such charts:
   - The chart "Total Bike Sales" (Gouge type) shows Total Sales of whole period of data which we have by Category "Bike" 
   - The chart "Book Sales b City" (Funnel type) shows Sales of books decreasing according to the amount of sales by City
   - The chart "Total Sales by CustomerCode" (Matrix type) in DESC way gets a chance to analyze Sales of different categories of product (Book and Bike) according to the BC "CustomerCode"
   - The chart "Bike Salese by City" (Donut type) shows the amount and percetage of Bike's selling according to the cities. 
   - The chart "Total Monthly vs Average Sales per Customer"(Line and stacked column) shows Monthly Sales according to BK "CustomerCode" and although ratio to the average amounts.
   - The chart "Country Sales by Category" (100 % Stacked bar type) shows the propotion of each country to the total amount of sales by Category.
  
 I also used such tools as "Measure"/"Quick Measure" to find Max Sales Value by Category.
  
  At least let's see the example of dashboard:
  ![SalesDashboard](https://user-images.githubusercontent.com/39432736/122681557-21408000-d1f5-11eb-95d5-b1b8627561b4.png)
  
