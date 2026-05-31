CREATE DATABASE online_store;
USE online_store;

SELECT * FROM online_store LIMIT 10;

-- Total Revenue Generated
SELECT SUM(Revenue)AS total_revenue
FROM online_store;

-- Total Number of Orders
SELECT COUNT(DISTINCT Invoice)AS total_orders
FROM online_store;

-- Highest Revenue Generating Products
SELECT Description,SUM(Revenue)AS total_revenue
FROM online_store
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 10;

-- Average Order Value
SELECT SUM(Revenue)/COUNT(DISTINCT Invoice)AS avg_order_value
FROM online_store;

-- Revenue Trend by Month
SELECT Year,Month,SUM(Revenue) AS monthly_revenue
FROM online_store
GROUP BY Year,Month 
ORDER BY Year,Month;

-- . Best Sales Day of the Week
SELECT DayofWeek,SUM(Revenue) AS total_revenue
FROM online_store
GROUP BY DayofWeek 
ORDER BY total_revenue DESC;

-- Peak Sales Hours
SELECT Hour,SUM(Revenue) AS total_revenue
FROM online_store
GROUP BY Hour 
ORDER BY total_revenue DESC;

-- Customers with Highest Spending
SELECT `Customer ID`,SUM(Revenue) AS money_spent
FROM online_store
WHERE `Customer ID` IS NOT NULL
GROUP BY `Customer ID`
ORDER BY money_spent DESC LIMIT 20; 

-- Countries with Highest Average Order Value
SELECT Country,SUM(Revenue)/COUNT(DISTINCT Invoice) AS avg_order_value
FROM online_store
GROUP BY Country
ORDER BY avg_order_value DESC
LIMIT 10;

-- Products with High Revenue but Low Quantity

SELECT Description,SUM(Revenue) AS total_revenue,SUM(Quantity) AS total_quantity
FROM online_store
GROUP BY Description
HAVING total_quantity < 30
ORDER BY total_revenue DESC;

-- Customer Retention Analysis
SELECT `Customer ID`,COUNT(DISTINCT Invoice) AS order_count
FROM online_store
GROUP BY `Customer ID`
HAVING order_count>3
ORDER BY order_count DESC;

SELECT
    order_count,
    COUNT(*) AS customers
FROM (
    SELECT `Customer ID`,
           COUNT(DISTINCT Invoice) AS order_count
    FROM online_store
    WHERE `Customer ID` IS NOT NULL
    GROUP BY `Customer ID`
) t
GROUP BY order_count
ORDER BY order_count;

-- RFM Analysis (Recency, Frequency, Monetary)
SELECT `Customer ID`,MAX(InvoiceDate) AS last_purchase,COUNT(DISTINCT Invoice) AS frequency,SUM(Revenue) AS monetary
FROM online_store
GROUP BY `Customer ID`;

-- Identify Dead Inventory
SELECT Description,SUM(Quantity) AS total_quantity
FROM online_store
GROUP BY Description
ORDER BY total_quantity ASC
LIMIT 20;

-- Customer Lifetime Value Approximation
SELECT `Customer ID`,COUNT(DISTINCT Invoice) AS total_orders, SUM(Revenue) AS lifetime_value,AVG(Revenue) AS avg_purchase_value
FROM online_store
WHERE `Customer ID` IS NOT NULL
GROUP BY `Customer ID`
ORDER BY lifetime_value DESC;

-- Detect Seasonal Products
SELECT Description,Month,SUM(Quantity) AS total_sales
FROM online_store
GROUP BY Description,Month 
ORDER BY total_sales DESC;

SELECT COUNT(*) FROM online_store;

-- High-Value Customer Analysis by Country

CREATE TABLE customers AS
SELECT DISTINCT
    `Customer ID`,
    Country
FROM online_store
WHERE `Customer ID` IS NOT NULL;

-- Products Purchased Together Analysis

SELECT
    c.`Customer ID`,
    c.Country,
    SUM(o.Revenue) AS Total_Revenue
FROM customers c
INNER JOIN online_store o
ON c.`Customer ID` = o.`Customer ID`
GROUP BY c.`Customer ID`, c.Country
ORDER BY Total_Revenue DESC
LIMIT 10;

-- Country-Wise Sales Performance Analysis
SELECT
    a.Invoice,
    a.Description AS Product_1,
    b.Description AS Product_2
FROM online_store a
JOIN online_store b
ON a.Invoice = b.Invoice
AND a.StockCode < b.StockCode
LIMIT 20;
