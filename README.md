# Laptop Sales Analysis SQL Project

## Project Overview

**Project Title**: Laptop Sales Analysis in SQL  
**Database**: `laptop_sales_db`  

This project analyzes laptop sales data to understand customer preferences, purchasing behavior, and brand popularity. The dataset includes information on customer demographics, purchase modes, income levels, and satisfaction ratings.

---

## Objectives

1. **Explore the dataset** to understand customer purchasing trends.  
2. **Handle missing values** to ensure data accuracy.  
3. **Standardize brand names** for consistency.  
4. **Analyze purchasing behavior by brand, mode, and price range.**  
5. **Extract insights on customer satisfaction levels.**  

---

## Project Structure

### **1. Data Exploration**

#### **View Full Dataset**
```sql
SELECT * FROM laptop_purchase_data_india;
```

#### **Check for Missing Values**
```sql
SELECT * FROM laptop_purchase_data_india
WHERE Customer_ID IS NULL;

SELECT * FROM laptop_purchase_data_india
WHERE Satisfaction_Rating IS NULL;
```

---

### **2. Data Cleaning**

#### **Standardize Brand Names**
```sql
UPDATE laptop_purchase_data_india
SET BRAND_PURCHASED = UPPER(BRAND_PURCHASED);
```

#### **Create a Staging Table for Cleaned Data**
```sql
CREATE TABLE laptop_purchase_data_india2 (
    Customer_ID TEXT,
    Age INT DEFAULT NULL,
    Gender TEXT,
    City TEXT,
    Income_Level TEXT,
    Purchase_Mode TEXT,
    Brand_Purchased TEXT,
    Price_Range TEXT,
    Payment_Mode TEXT,
    Purchase_Frequency TEXT,
    Satisfaction_Rating INT DEFAULT NULL
);
```

#### **Insert Data into Cleaned Table**
```sql
INSERT INTO laptop_purchase_data_india2
SELECT * FROM laptop_purchase_data_india;
```

---

### **3. Sales Analysis & Insights**

#### **Brand Popularity Analysis**
```sql
SELECT BRAND_PURCHASED, COUNT(*) AS Total_Purchases
FROM laptop_purchase_data_india2
GROUP BY BRAND_PURCHASED
ORDER BY 1 ASC;
```

#### **Most Preferred Purchase Mode**
```sql
SELECT Purchase_Mode, COUNT(*) AS Total
FROM laptop_purchase_data_india2
GROUP BY Purchase_Mode
ORDER BY Total DESC;
```

#### **Income Level & Purchase Patterns**
```sql
SELECT Income_Level, COUNT(*) AS Total_Purchases
FROM laptop_purchase_data_india2
GROUP BY Income_Level
ORDER BY Total_Purchases DESC;
```

#### **Customer Satisfaction Analysis**
```sql
SELECT Satisfaction_Rating, COUNT(*) AS Customer_Count
FROM laptop_purchase_data_india2
GROUP BY Satisfaction_Rating
ORDER BY Satisfaction_Rating DESC;
```

#### **Most Purchased Price Range**
```sql
SELECT Price_Range, COUNT(*) AS Total_Sales
FROM laptop_purchase_data_india2
GROUP BY Price_Range
ORDER BY Total_Sales DESC;
```

---

## **Findings & Insights**

- **Most popular brands** based on total purchases.  
- **Purchase mode preference** (online vs. in-store).  
- **Income level trends** related to laptop purchases.  
- **Customer satisfaction distribution** across different brands.  
- **Price range trends** to understand affordability patterns.  

---

## **How to Use This Project**

1. **Clone the Repository**: If this is on GitHub, clone or download the SQL file.  
2. **Set Up the Database**: Run the queries in your SQL environment.  
3. **Import Data**: Load the laptop sales dataset into `laptop_purchase_data_india2`.  
4. **Run Analysis Queries**: Execute the provided SQL scripts to gain insights.  

---

## **Author & Portfolio**

This project is part of my portfolio to demonstrate SQL data analysis skills. If you have questions or feedback, feel free to connect with me!

### 📌 Stay Connected:
- **LinkedIn**: [www.linkedin.com/in/joshua-n-a28005216](#)  
- **Email**: [joshuajos999@gmail.com](#)  

🚀 **Thank you for exploring my SQL project!** 🚀

