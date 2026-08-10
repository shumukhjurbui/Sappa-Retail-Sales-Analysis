USE SappaRetail;
GO


-- =====================================================
-- 1. Monthly Sales Analysis
-- Purpose: Analyze how total sales change by month
-- =====================================================

SELECT
    MONTH(SaleDate) AS MonthNumber,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales
GROUP BY MONTH(SaleDate)
ORDER BY MonthNumber;


-- =====================================================
-- 2. Monthly Profit Analysis
-- Purpose: Analyze monthly profitability
-- =====================================================

SELECT
    MONTH(SaleDate) AS MonthNumber,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY MONTH(SaleDate)
ORDER BY MonthNumber;


-- =====================================================
-- 3. Monthly Units Sold
-- Purpose: Analyze sales volume by month
-- =====================================================

SELECT
    MONTH(SaleDate) AS MonthNumber,
    SUM(Quantity) AS UnitsSold
FROM Sales
GROUP BY MONTH(SaleDate)
ORDER BY MonthNumber;


-- =====================================================
-- 4. Monthly Sales and Profit Summary
-- Purpose: Compare sales and profit trends over time
-- =====================================================

SELECT
    MONTH(SaleDate) AS MonthNumber,
    DATENAME(MONTH, SaleDate) AS MonthName,
    SUM(Quantity * UnitPrice) AS TotalSales,
    SUM((UnitPrice - UnitCost) * Quantity) AS TotalProfit
FROM Sales
GROUP BY
    MONTH(SaleDate),
    DATENAME(MONTH, SaleDate)
ORDER BY MonthNumber;


-- =====================================================
-- 5. Previous Month Sales Comparison
-- Purpose: Compare each month's sales with the previous month
-- =====================================================

WITH MonthlySales AS (
    SELECT
        MONTH(SaleDate) AS MonthNumber,
        DATENAME(MONTH, SaleDate) AS MonthName,
        SUM(Quantity * UnitPrice) AS TotalSales
    FROM Sales
    GROUP BY
        MONTH(SaleDate),
        DATENAME(MONTH, SaleDate)
)

SELECT
    MonthNumber,
    MonthName,
    TotalSales,
    LAG(TotalSales) OVER (ORDER BY MonthNumber) AS PreviousMonthSales
FROM MonthlySales
ORDER BY MonthNumber;


-- =====================================================
-- 6. Month-over-Month Sales Growth
-- Purpose: Calculate the percentage change in sales
-- compared with the previous month
-- =====================================================

WITH MonthlySales AS (
    SELECT
        MONTH(SaleDate) AS MonthNumber,
        DATENAME(MONTH, SaleDate) AS MonthName,
        SUM(Quantity * UnitPrice) AS TotalSales
    FROM Sales
    GROUP BY
        MONTH(SaleDate),
        DATENAME(MONTH, SaleDate)
),

SalesComparison AS (
    SELECT
        MonthNumber,
        MonthName,
        TotalSales,
        LAG(TotalSales) OVER (ORDER BY MonthNumber) AS PreviousMonthSales
    FROM MonthlySales
)

SELECT
    MonthNumber,
    MonthName,
    TotalSales,
    PreviousMonthSales,
    ROUND(
        (TotalSales - PreviousMonthSales)
        / NULLIF(PreviousMonthSales, 0) * 100,
        2
    ) AS GrowthPercentage
FROM SalesComparison
ORDER BY MonthNumber;