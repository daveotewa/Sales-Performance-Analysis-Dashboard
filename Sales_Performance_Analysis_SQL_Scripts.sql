-- create_table.sql
CREATE TABLE sales_data (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Region VARCHAR(50),
    Product VARCHAR(100),
    Category VARCHAR(50),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Profit DECIMAL(10, 2),
    Customer_Segment VARCHAR(50)
);


-- total_sales_by_region.sql
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;


-- top_products_by_revenue.sql
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;


-- monthly_sales_trend.sql
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;


-- profit_by_customer_segment.sql
SELECT
    Customer_Segment,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Customer_Segment
ORDER BY Total_Profit DESC;


-- top_3_regions_by_profit.sql
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Profit DESC
LIMIT 3;


