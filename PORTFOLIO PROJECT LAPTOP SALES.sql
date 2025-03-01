
SELECT * FROM laptop_purchase_data_india;


SELECT * FROM laptop_purchase_data_india
WHERE  Customer_ID IS NULL;

SELECT * FROM laptop_purchase_data_india
WHERE  Satisfaction_Rating IS NULL;

UPDATE laptop_purchase_data_india
SET BRAND_PURCHASED = UPPER(BRAND_PURCHASED);

CREATE TABLE `laptop_purchase_data_india2` (
  `Customer_ID` text,
  `Age` int DEFAULT NULL,
  `Gender` text,
  `City` text,
  `Income_Level` text,
  `Purchase_Mode` text,
  `Brand_Purchased` text,
  `Price_Range` text,
  `Payment_Mode` text,
  `Purchase_Frequency` text,
  `Satisfaction_Rating` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO laptop_purchase_data_india2
SELECT * FROM laptop_purchase_data_india;

SELECT * FROM laptop_purchase_data_india;

SELECT BRAND_PURCHASED,COUNT(*) 
FROM laptop_purchase_data_india2
group by BRAND_PURCHASED
ORDER BY 1 ASC;

SELECT * FROM laptop_purchase_data_india;

SELECT Purchase_Mode,COUNT(*) AS TOTAL
FROM laptop_purchase_data_india2
group by PURCHASE_MODE
ORDER BY 1;

SELECT * FROM laptop_purchase_data_india;

SELECT Brand_Purchased,avg(Satisfaction_Rating) AS SATISFACTION
FROM laptop_purchase_data_india
group by Brand_Purchased
ORDER BY 2 DESC;

SELECT * FROM laptop_purchase_data_india;

SELECT CITY,COUNT(*) AS TOTAL_PURCHASE
FROM laptop_purchase_data_india2
group by CITY
ORDER BY 2 DESC;

SELECT INCOME_LEVEL,avg(AGE) AS AVG_AGE
FROM laptop_purchase_data_india2
GROUP BY Income_Level
ORDER BY 1;

SELECT PRICE_RANGE,COUNT(*) AS TOTAL
FROM laptop_purchase_data_india2
GROUP BY Price_Range
ORDER BY 2 DESC;



