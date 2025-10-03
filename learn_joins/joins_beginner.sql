/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Date release: 03-10-2025, in format Brazil
Version: 1.0
Description: File with scripts of exercises JOINS "INNER, LEFT, RIGHT, FULL"
*/

-- exercise 01: return name of customer with order of customer
SELECT sc.FirstName + ' ' + sc.LastName as 'Nome completo', ssoh.SalesOrderID as 'ID de venda' 
FROM SalesLT.Customer as sc INNER JOIN SalesLT.SalesOrderHeader as ssoh ON sc.CustomerID = ssoh.CustomerID
ORDER BY sc.FirstName ASC
