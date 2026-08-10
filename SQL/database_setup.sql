CREATE DATABASE SappaRetail;
GO

USE SappaRetail;
GO

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    SaleDate DATE,
    Product VARCHAR(50),
    Category VARCHAR(50),
    City VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    UnitCost DECIMAL(10,2)
);
GO

INSERT INTO Sales VALUES
(1,'2026-01-05','Laptop','Electronics','Riyadh',2,3500,2800),
(2,'2026-01-08','Mouse','Accessories','Jeddah',10,120,70),
(3,'2026-01-15','Keyboard','Accessories','Riyadh',5,250,160),
(4,'2026-01-22','Monitor','Electronics','Dammam',3,900,650),

(5,'2026-02-03','Laptop','Electronics','Dammam',3,3500,2800),
(6,'2026-02-10','Monitor','Electronics','Jeddah',4,900,650),
(7,'2026-02-18','Mouse','Accessories','Riyadh',15,120,70),
(8,'2026-02-25','Keyboard','Accessories','Jeddah',7,250,160),

(9,'2026-03-02','Keyboard','Accessories','Dammam',8,250,160),
(10,'2026-03-12','Monitor','Electronics','Riyadh',6,900,650),
(11,'2026-03-20','Laptop','Electronics','Jeddah',1,3500,2800),
(12,'2026-03-27','Mouse','Accessories','Dammam',12,120,70),

(13,'2026-04-04','Mouse','Accessories','Dammam',20,120,70),
(14,'2026-04-14','Monitor','Electronics','Jeddah',7,900,650),
(15,'2026-04-20','Laptop','Electronics','Riyadh',4,3500,2800),
(16,'2026-04-25','Keyboard','Accessories','Riyadh',10,250,160),

(17,'2026-05-03','Laptop','Electronics','Jeddah',2,3500,2800),
(18,'2026-05-11','Mouse','Accessories','Riyadh',18,120,70),
(19,'2026-05-19','Monitor','Electronics','Dammam',5,900,650),
(20,'2026-05-27','Keyboard','Accessories','Jeddah',9,250,160),

(21,'2026-06-05','Monitor','Electronics','Riyadh',8,900,650),
(22,'2026-06-12','Laptop','Electronics','Dammam',2,3500,2800),
(23,'2026-06-20','Keyboard','Accessories','Dammam',11,250,160),
(24,'2026-06-28','Mouse','Accessories','Jeddah',16,120,70);
GO

SELECT *
FROM Sales;