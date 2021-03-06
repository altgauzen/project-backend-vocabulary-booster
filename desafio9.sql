SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
COUNT(orders.OrderID) AS `Total de pedidos`
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees
ON orders.EmployeeID = employees.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos`;
