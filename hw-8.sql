-- Вывести страны, в которых ко-во клиентов от 10 до 20 (вкл.)
SELECT
Country,
COUNT(*) AS total_customers
FROM Customers
GROUP BY Country
Having total_customers BETWEEN 10 AND 20;

-- Вывести ТОП-3 стран по ко-ву клиентов

SELECT
Country,
COUNT(*) AS total_customers
FROM Customers
GROUP BY Country
order by total_customers DESC
LIMIT 3

-- Вывести имена клиентов, у которых два и более заказов

SELECT Customers.CustomerName,
COUNT(Orders.OrderID) AS total_orders
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID
HAVING total_orders >= 2;
