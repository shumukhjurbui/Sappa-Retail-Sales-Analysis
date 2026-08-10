USE SappaRetail;
GO

-- Total Sales
SELECT
    SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales;

-- Total Profit
SELECT
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales;

-- Total Units Sold
SELECT
    SUM(Quantity) AS TotalUnitsSold
FROM Sales;

-- Total Transactions
SELECT
    COUNT(*) AS TotalTransactions
FROM Sales;

-- Average Transaction Value
SELECT
    AVG(Quantity * UnitPrice) AS AverageTransactionValue
FROM Sales;

-- Average Units Per Transaction
SELECT
    AVG(CAST(Quantity AS DECIMAL(10,2))) AS AverageUnitsPerTransaction
FROM Sales;


SELECT
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit,
    SUM(Quantity) AS TotalUnitsSold,
    COUNT(*) AS TotalTransactions,
    AVG(Quantity * UnitPrice) AS AverageTransactionValue
FROM Sales;