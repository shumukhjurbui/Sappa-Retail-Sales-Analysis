USE SappaRetail;
GO

-- View all data
SELECT *
FROM Sales;

-- Total number of transactions
SELECT
    COUNT(*) AS TotalTransactions
FROM Sales;

-- Available products
SELECT DISTINCT Product
FROM Sales;

-- Available categories
SELECT DISTINCT Category
FROM Sales;

-- Available cities
SELECT DISTINCT City
FROM Sales;

-- Dataset date range
SELECT
    MIN(SaleDate) AS StartDate,
    MAX(SaleDate) AS EndDate
FROM Sales;

-- Minimum and maximum quantity per transaction
SELECT
    MIN(Quantity) AS MinimumQuantity,
    MAX(Quantity) AS MaximumQuantity
FROM Sales;

-- Average quantity per transaction
SELECT
    AVG(CAST(Quantity AS DECIMAL(10,2))) AS AverageQuantity
FROM Sales;