SELECT * FROM Customers;

SELECT Name, Price
FROM Products
WHERE Price > 1000;

SELECT c.FullName, p.Name, o.Quantity
FROM Orders o
JOIN Customers c ON o.CustomerId = c.CustomerId
JOIN Products p ON o.ProductId = p.ProductId;

SELECT c.FullName, SUM(p.Price * o.Quantity) AS TotalSpent
FROM Orders o
JOIN Customers c ON o.CustomerId = c.CustomerId
JOIN Products p ON o.ProductId = p.ProductId
GROUP BY c.FullName;

SELECT p.Name, COUNT(o.OrderId) AS OrderCount
FROM Products p
LEFT JOIN Orders o ON p.ProductId = o.ProductId
GROUP BY p.Name;
