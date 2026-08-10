# Sappa Retail Sales Analysis

## Project Overview

Sappa Retail Sales Analysis is a SQL-based data analysis project created to analyze the performance of a fictional retail store called **Sappa**.

The project explores sales transactions across different products, categories, cities, and months to understand overall business performance, identify sales trends, compare product performance, and evaluate profitability.

The main goal of this project is to practice SQL while applying analytical thinking to real business questions.

---

## Business Questions

The analysis focuses on answering questions such as:

- What are the total sales and total profit?
- How many units were sold?
- How many sales transactions were recorded?
- What is the average transaction value?
- Which products generate the highest sales?
- Which products sell the most units?
- Which product categories perform best?
- Which cities generate the highest sales and profit?
- How do sales change over time?
- Which months perform best?
- How does each month's performance compare with the previous month?
- Which products generate the highest profit?
- Which products have the strongest profit margins?

---

## Dataset

The dataset contains retail sales transactions for Sappa from **January to June 2026**.

### Main Columns

- `SaleID` — Unique transaction identifier
- `SaleDate` — Date of the transaction
- `Product` — Product name
- `Category` — Product category
- `City` — Sales location
- `Quantity` — Number of units sold
- `UnitPrice` — Selling price per unit
- `UnitCost` — Cost per unit

### Products

- Laptop
- Monitor
- Keyboard
- Mouse

### Categories

- Electronics
- Accessories

### Cities

- Riyadh
- Jeddah
- Dammam

---

## Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

---

## SQL Skills Used

This project applies several SQL concepts used in data analysis:

- SELECT
- DISTINCT
- COUNT
- SUM
- AVG
- MIN
- MAX
- GROUP BY
- ORDER BY
- TOP
- Common Table Expressions (CTEs)
- Window Functions
- LAG
- NULLIF
- ROUND
- MONTH
- DATENAME

---

## Project Structure

```text
Sappa-Retail-Sales-Analysis/
│
├── database_setup.sql
├── data_exploration.sql
├── sales_analysis.sql
├── product_analysis.sql
├── location_analysis.sql
├── time_analysis.sql
├── profitability.sql
├── profitability_analysis.sql
└── README.md
```

---

## Analysis Process

### 1. Database Setup

The `database_setup.sql` file creates the **SappaRetail** database and the Sales table.

It also inserts the sample transaction data used throughout the project.

---

### 2. Data Exploration

The `data_exploration.sql` file explores the dataset before performing deeper analysis.

The exploration includes:

- Total number of transactions
- Available products
- Product categories
- Cities
- Date range
- Minimum and maximum values
- Average quantities

This step helps understand the structure and characteristics of the data before answering business questions.

---

### 3. Sales Analysis

The `sales_analysis.sql` file evaluates the overall performance of Sappa.

Key performance indicators include:

- Total Sales
- Total Profit
- Total Units Sold
- Total Transactions
- Average Transaction Value
- Average Units per Transaction

These metrics provide a high-level overview of business performance.

---

### 4. Product Analysis

The `product_analysis.sql` file compares the performance of products and categories.

The analysis includes:

- Sales by product
- Units sold by product
- Profit by product
- Product performance comparison
- Category performance

This analysis helps distinguish between products that generate high sales revenue and products that sell a high number of units.

---

### 5. Location Analysis

The `location_analysis.sql` file evaluates performance across:

- Riyadh
- Jeddah
- Dammam

Cities are compared using:

- Total Sales
- Total Profit
- Units Sold
- Number of Transactions

This helps identify the strongest geographical markets for Sappa.

---

### 6. Time Analysis

The `time_analysis.sql` file analyzes business performance over time.

The analysis includes:

- Monthly Sales
- Monthly Profit
- Monthly Units Sold
- Monthly Sales and Profit comparison
- Previous Month Sales
- Month-over-Month Growth

SQL window functions such as `LAG()` are used to compare current performance with previous periods.

---

### 7. Profitability Analysis

The profitability SQL files focus specifically on the financial performance of the business.

The analysis includes:

- Revenue
- Costs
- Profit
- Profit by Product
- Profit by Category
- Profit Margin Percentage
- Top-performing products
- Top-performing locations
- Best-performing months

This analysis demonstrates why sales revenue alone is not enough to evaluate business performance.

A product can generate high sales while producing a lower profit margin because of its costs.

---

## Analytical Approach

The project follows a business-focused analytical process:

1. Understand the data.
2. Define the business question.
3. Identify the required variables.
4. Select the appropriate metric.
5. Write the SQL query.
6. Compare the results.
7. Identify trends and patterns.
8. Interpret the results from a business perspective.

For example:

- `SUM(Quantity)` measures sales volume.
- `COUNT(*)` measures transaction volume.
- `SUM(Quantity * UnitPrice)` calculates sales revenue.
- `SUM((UnitPrice - UnitCost) * Quantity)` calculates profit.
- `GROUP BY Product` compares product performance.
- `GROUP BY City` compares geographical performance.
- Monthly analysis identifies changes and trends over time.

---

## Key Analytical Concepts

This project demonstrates several important principles of data analysis.

### Sales vs. Sales Volume

The product with the highest number of units sold is not necessarily the product generating the highest revenue.

### Sales vs. Profit

High sales do not automatically mean high profitability because product costs must also be considered.

### Trend Analysis

Monthly comparisons help identify periods of growth or decline.

### Location Performance

Comparing cities helps identify stronger and weaker markets.

### Profitability

Profit margin provides additional context beyond total sales and total profit.

---

## Skills Demonstrated

- SQL
- Data Analysis
- Exploratory Data Analysis (EDA)
- Sales Analysis
- Profitability Analysis
- Trend Analysis
- Business Analysis
- KPI Analysis
- SQL Aggregations
- SQL Window Functions
- Data Interpretation
- Analytical Thinking

---

## Future Improvements

The project can be expanded in the future by adding:

- Customer information
- Customer segmentation
- Discounts
- Store branches
- Sales representatives
- Payment methods
- Additional products
- More historical data
- Year-over-Year analysis
- Statistical analysis
- Power BI dashboard

---

## Author

**Shumukh Jurbui