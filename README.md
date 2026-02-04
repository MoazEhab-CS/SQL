# Learning SQL 📊


## Contents
1. [**📝Beginner Level**](./Beginner_SQL/)
   - Basic `SELECT` statements
   - Using `WHERE`, `ORDER BY`, `GROUP BY`
   - Aggregate functions (`SUM`, `COUNT`, `AVG`, etc.)
   - Using `LIMIT`, `Aliasing`
2. [**📝Intermediate Level**](./Intermediate_SQL/)
   - Table joins (`JOINs`)
   - Using `UNIONs`
   - String Functions  `LENGTH`, `UPPER`,`TRIM`,`SUBSTRING`,`CONCAT`,`REPLACE`
   - Using `CASE`
   - Using `SUBQUERIEs`
   - Window Function `OVER`,`ROW_NUMBER`,`RANK`,`DENSE_RANK`
3. [**📝Advanced Level**](./Advanced_SQL/)
   - Using `CTEs`
   - Create `TEMPORARY Table`
   - Create `Stored PROCEDURE`
   - Create `TRIGGERs` and `EVENTs`

---
# [Project One: SQL Data Cleaning Project](./Projects/1-Data%20Cleaning.sql)

## 📌 Overview
This project demonstrates how to clean and prepare raw data using **SQL**.  
The goal is to improve data quality by removing inconsistencies, correcting errors, and standardizing formats to make the data ready for analysis.

## 🛠 Tools Used
- SQL
- Relational Database (MySQL / PostgreSQL / SQL Server)

## 📂 Dataset
- Raw data collected from the original source
- Contains missing values, duplicates, inconsistent formats, and invalid records

## 🔄 Data Cleaning Process
The following steps were performed:

1. Creating a staging table
2. Removing duplicate records
3. Handling NULL and missing values
4. Standardizing data formats (dates, text, categories)
5. Correcting invalid data
6. Creating final cleaned tables

---

## ✅ Results
- Clean and standardized dataset
- Improved data accuracy and consistency
- Ready for analysis, visualization, and reporting

---

# [Project Two: Layoffs Exploratory Data Analysis (EDA)](./Projects/2-Exploratory%20Data%20Analysis.sql)

## 📌 Overview
This project performs **Exploratory Data Analysis (EDA)**
The goal is to uncover insights about layoffs across companies, industries, locations, and time periods.

---


## 🔍 Analysis Steps
1. **Initial Exploration**
   - View raw dataset with `SELECT * FROM layoffs_staging2;`

2. **Top Companies by Layoffs**
   - Largest single layoff event per company
   - Total layoffs aggregated per company

3. **Companies with 100% Layoffs**
   - Identify companies that shut down completely
   - Compare against funds raised

4. **Layoffs by Location**
   - Aggregate layoffs by geographic location

5. **Layoffs by Year**
   - Yearly totals of layoffs
   - Top 3 companies per year with most layoffs (using `DENSE_RANK`)

6. **Rolling Monthly Layoffs**
   - Monthly aggregation of layoffs
   - Cumulative rolling total over time

---

## 📊 Key Insights
- Some companies raised billions yet still collapsed (e.g., **Britishvolt**).
- Certain locations consistently show higher layoffs.
- Layoffs peaked in specific years, reflecting economic downturns or crises.
- Rolling totals highlight the cumulative impact over time.

---

## 🛠 SQL Techniques Used
- **Aggregation:** `SUM()`, `MAX()`
- **Grouping:** `GROUP BY`
- **Ranking:** `DENSE_RANK() OVER()`
- **CTEs:** Common Table Expressions for modular queries
- **Window Functions:** Rolling totals with `SUM() OVER()`
- **Date Functions:** `YEAR()`, `SUBSTRING()`

---

## ✅ Results
- Cleaned and structured layoff dataset
- Identified top companies with highest layoffs (Amazon, Google, Meta, Microsoft, Twitter)
- Highlighted companies with 100% workforce layoffs despite high funding (e.g., Britishvolt, Quibi)
- Aggregated layoffs by location, showing hotspots like San Francisco, Seattle, and New York
- Yearly trends revealed spikes in 2022–2023
- Ranked top 3 companies per year with most layoffs
- Built rolling monthly and cumulative totals to track progression over time
- Dataset is now ready for deeper analysis, visualization, and reporting