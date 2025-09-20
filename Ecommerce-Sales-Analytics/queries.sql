-- Insert Sample Data
INSERT INTO Customers VALUES (1, 'Muskan', 'Mittal', 'muskan@example.com', 'Delhi');
INSERT INTO Products VALUES (101, 'Smartphone', 'Electronics', 15000.00);
INSERT INTO Orders VALUES (5001, 1, '2025-09-20', 15000.00);
INSERT INTO OrderDetails VALUES (9001, 5001, 101, 1, 15000.00);

-- Sample Queries
SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT p.ProductName, SUM(od.Quantity) AS TotalSold
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC;

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY Month;