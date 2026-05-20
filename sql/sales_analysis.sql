-- Total Revenue
SELECT 
    SUM(Revenue) AS Total_Revenue
FROM sales_data;

-- Revenue by Store
SELECT 
    Store,
    SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Store
ORDER BY Total_Revenue DESC;

-- Top Selling Products
SELECT 
    Product,
    SUM(Units_Sold) AS Total_Units_Sold
FROM sales_data
GROUP BY Product
ORDER BY Total_Units_Sold DESC;

-- Revenue by Category
SELECT 
    Category,
    SUM(Revenue) AS Category_Revenue
FROM sales_data
GROUP BY Category
ORDER BY Category_Revenue DESC;