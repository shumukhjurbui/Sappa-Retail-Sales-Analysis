USE SappaRetail;
GO

-- Sales by Product
SELECT
    Product,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales
GROUP BY Product
ORDER BY TotalSales DESC;

-- Units Sold by Product
SELECT
    Product,
    SUM(Quantity) AS UnitsSold
FROM Sales
GROUP BY Product
ORDER BY UnitsSold DESC;

-- Profit by Product
SELECT
    Product,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY Product
ORDER BY TotalProfit DESC;

-- Product Performance
SELECT
    Product,
    SUM(Quantity) AS UnitsSold,
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY Product
ORDER BY TotalSales DESC;

-- Category Performance
SELECT
    Category,
    SUM(Quantity) AS UnitsSold,
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY Category
ORDER BY TotalSales DESC;