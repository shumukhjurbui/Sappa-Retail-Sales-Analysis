USE SappaRetail;
GO

-- Sales, Cost and Profit by Product
SELECT
    Product,
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM(Quantity * UnitCost) AS TotalCost,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY Product
ORDER BY TotalProfit DESC;


-- Profit Margin
SELECT
    Product,
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit,
    ROUND(
        SUM((UnitPrice - UnitCost) * Quantity)
        / NULLIF(SUM(Quantity * UnitPrice), 0) * 100,
        2
    ) AS ProfitMarginPercentage
FROM Sales
GROUP BY Product
ORDER BY ProfitMarginPercentage DESC;


-- Category
SELECT
    Category,
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit,
    ROUND(
        SUM((UnitPrice - UnitCost) * Quantity)
        / NULLIF(SUM(Quantity * UnitPrice), 0) * 100,
        2
    ) AS ProfitMarginPercentage
FROM Sales
GROUP BY Category
ORDER BY ProfitMarginPercentage DESC;