/*
===============================================================================
Date Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Determine Min and Max dates and Total Duration in Months
SELECT
-- Determin Min and Max dates
MIN(order_date) AS first_date,
MAX(order_date) AS Last_date,
--Total Duration in Months
DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS Date_range
FROM gold.fact_sales;

-- Find the young and oldest customer birthdate
SELECT
MIN(birthdate) AS oldest_birthdate,
DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_Age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;


