-- Top Performing Product by Sales
SELECT TOP 1
    Product,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales
GROUP BY Product
ORDER BY TotalSales DESC;

-- Top Performing City by Sales
SELECT TOP 1
    City,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales
GROUP BY City
ORDER BY TotalSales DESC;

-- Best Month by Sales
SELECT TOP 1
    DATENAME(MONTH, SaleDate) AS MonthName,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales
GROUP BY
    MONTH(SaleDate),
    DATENAME(MONTH, SaleDate)
ORDER BY TotalSales DESC;