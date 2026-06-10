CREATE DATABASE SupplyChainAnalytics;
USE SupplyChainAnalytics;
CREATE TABLE SupplyChain (
    Type VARCHAR(50),
    Days_For_Shipping_Real INT,
    Days_For_Shipment_Scheduled INT,
    Benefit_Per_Order FLOAT,
    Sales_Per_Customer FLOAT,
    Delivery_Status VARCHAR(50),
    Late_Delivery_Risk INT,
    Category_ID INT,
    Category_Name VARCHAR(100),
    Customer_City VARCHAR(100)
);
SHOW TABLES;
DESCRIBE supply_chain;

SELECT COUNT(*)
FROM supply_chain;
SELECT *
FROM supply_chain
WHERE `Category Name` IS NULL;

SELECT
`Order Id`,
COUNT(*)
FROM supply_chain
GROUP BY `Order Id`
HAVING COUNT(*) > 1;

ALTER TABLE supply_chain
ADD COLUMN Delay_Days INT;

SET SQL_SAFE_UPDATES = 0;
UPDATE supply_chain
SET Delay_Days =
`Days for shipping (real)` -
`Days for shipment (scheduled)`;

SET SQL_SAFE_UPDATES = 1;
SELECT
SUM(`Sales per customer`) AS Revenue
FROM supply_chain;

SELECT
SUM(`Benefit per order`) AS Profit
FROM supply_chain;
SELECT
AVG(Delay_Days) AS Avg_Delay
FROM supply_chain;
SELECT
`Delivery Status`,
COUNT(*) AS Orders_Count
FROM supply_chain
GROUP BY `Delivery Status`;

SELECT
`Category Name`,
SUM(`Sales per customer`) AS Revenue
FROM supply_chain
GROUP BY `Category Name`
ORDER BY Revenue DESC;

SELECT
`Category Name`,
SUM(`Benefit per order`) AS Profit
FROM supply_chain
GROUP BY `Category Name`
ORDER BY Profit DESC;

SELECT
`Category Name`,
AVG(Delay_Days) AS Avg_Delay
FROM supply_chain
GROUP BY `Category Name`
ORDER BY Avg_Delay DESC;

SELECT
`Customer City`,
AVG(Delay_Days) AS Avg_Delay
FROM supply_chain
GROUP BY `Customer City`
ORDER BY Avg_Delay DESC;

SELECT
`Customer Country`,
SUM(`Sales per customer`) AS Revenue
FROM supply_chain
GROUP BY `Customer Country`
ORDER BY Revenue DESC;

SELECT
SUM(`Late_delivery_risk`) AS High_Risk_Orders
FROM supply_chain;

SELECT
`Category Name`,
AVG(`Late_delivery_risk`) * 100 AS Risk_Percentage
FROM supply_chain
GROUP BY `Category Name`
ORDER BY Risk_Percentage DESC;