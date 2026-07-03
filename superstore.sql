-- ========================================
SELECT ROUND(SUM(sales),2) AS Total_Sales
FROM orders;
-- ========================================
SELECT ROUND(SUM(profit),2) AS Total_Profit
FROM orders;
-- ========================================
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM orders;

SELECT region, ROUND(SUM(sales),2) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;


SELECT 
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.2 THEN 'Low Discount'
        ELSE 'High Discount'
    END AS discount_group,
    ROUND(SUM(sales),2) AS sales,
    ROUND(SUM(profit),2) AS profit
FROM orders
GROUP BY discount_group;

SELECT product_name, ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit ASC
LIMIT 10;


SELECT customer_name, ROUND(SUM(sales),2) AS revenue
FROM orders
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;
