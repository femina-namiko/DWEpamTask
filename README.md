# DWEpamTask

This is an illustration of star schema data model on an imaginary data warehouse for interview task at EPAM:

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


Providing steps:
 1. 
    a) At the beginning I've already had the star schema model of DW with fact table "Sales" and two demancions: "Product" and "Category". The fact table "Sales" that holds the measures of sales process has already been defined. The columns for every foreign key that links the measures to the corresponding dimension rows has already been provided . Also here, a surrogate key is introduced in the fact table that will become the primary key of the table

Before adding more dimension let's identify candidate business processes that want to be covered by this data warehouse and will be interesting to key users to analyze and run reports on. According to the what I've already had I suggested to add dimencions "Customers" and "Calendar" for starting with the process analyzing product sales (by any kind of time) that has a high business value, hence very popular for most organizations. Once business process was chosen, let's describe it in terms of measures. The most trivial measure is the counting measure. A measure has no meaning on its own. Let's choose dimension attributes. Sales amounts are relevant for products, and for customers, on a given date, and maybe for sales representatives. The values of these attributes can be used to filter your measures, to drill-down/up and to categorize measures in columns or rows.

The "Calendar" dimension table contains all the dates from some point in the past (ex. 2021 Jan 1) up to some point in the future (ex. 2021 Dec 31) - a period relevant to business users.   

    b) The business key is the attribute that is known in the operational system by the business users. 

- The business key in "Product" dimension let's use the string format of product code such PC0000 (It is meaningfull to get this information from bussiness side. It should be information that is undestandable for bussiness)
- The business key in "Customer" dimension let's use the interger format 000000. (it is smth like number of customer's club card)
- The business key in "Calendar" dimension for easy query development, an integer is provided taking the format YYYYMMDD and it maybe primary key simultaneously.
