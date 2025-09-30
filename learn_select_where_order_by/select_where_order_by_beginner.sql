/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Date release: 29-09-2025, in format Brazil
Version: 1.0
Description: File with scripts of exercises "SELECT", "WHERE", "ORDER BY"
*/

-- exercise 01: return all clients of table SalesLT.Customer
SELECT *
FROM SalesLT.Customer as sc

-- exercise 02: return first name and middle name of customers in order ascendent 
SELECT sc.FirstName as 'Primeiro nome', sc.LastName as 'Ultimo nome'
FROM SalesLT.Customer as sc
ORDER BY sc.FirstName ASC