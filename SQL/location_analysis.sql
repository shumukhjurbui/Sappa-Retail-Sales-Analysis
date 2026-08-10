USE SappaRetail;
GO

-- Sales by City
SELECT
    City,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales
GROUP BY City
ORDER BY TotalSales DESC;

-- Profit by City
SELECT
    City,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY City
ORDER BY TotalProfit DESC;

-- Units Sold by City
SELECT
    City,
    SUM(Quantity) AS UnitsSold
FROM Sales
GROUP BY City
ORDER BY UnitsSold DESC;

-- Full City Performance
SELECT
    City,
    COUNT(*) AS TotalTransactions,
    SUM(Quantity) AS UnitsSold,
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY City
ORDER BY TotalSales DESC;