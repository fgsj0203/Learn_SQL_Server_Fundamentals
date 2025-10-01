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

-- exercise 03: return clients only with middlename contain name "Smith"
SELECT *
FROM SalesLT.Customer as sc
WHERE sc.MiddleName LIKE '%Smith%'

-- exercise 04: return products with value price is bigger 100
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.ListPrice > 100
ORDER BY sp.ListPrice DESC

-- exercise 05: return products if ProductNumber is started "BK-"
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.ProductNumber LIKE 'BK-%'

--exercise 06: return of 10 first clients 
SELECT TOP 10 *
FROM SalesLT.Customer as sc
ORDER BY sc.FirstName ASC

-- exercise 07: return clients a living in state started "WA"
SELECT *
FROM SalesLT.Customer as sc INNER JOIN SalesLT.CustomerAddress as sca ON sc.CustomerID = sca.CustomerID
INNER JOIN SalesLT.[Address] as sa ON sca.AddressID = sa.AddressID
WHERE sa.StateProvince LIKE 'WA%'

-- exercise 08: return name of clients is started a letter "J"
SELECT *
FROM SalesLT.Customer as sc
WHERE sc.FirstName LIKE 'J%'

-- exercise 09: return products with price in between 50 and 100
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.ListPrice BETWEEN 50 and 100
ORDER BY sp.ListPrice DESC

-- exercise 10: return clients in order of CompanyName in format decrescent 
SELECT *
FROM SalesLT.Customer as sc
ORDER BY sc.CompanyName DESC

-- exercise 11: return clients of living in "Toronto"
SELECT *
FROM SalesLT.[Address] as sa INNER JOIN SalesLT.CustomerAddress as sca ON sa.AddressID = sca.AddressID
INNER JOIN SalesLT.Customer as sc ON sca.CustomerID = sc.CustomerID
WHERE sa.City = 'Toronto'

-- exercise 12: return all products of color is not informed
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.Color is NULL

-- exercise 13: return clients if column email contain "adventure-works"
SELECT *
FROM SalesLT.Customer as sc
WHERE sc.EmailAddress LIKE '%adventure-works%'

-- exercise 14: return products if weight is differente value NULL
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.[Weight] is NOT NULL 

-- exercise 15: return products of value in column StandardCost is bigger 500
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.StandardCost > 500
ORDER BY sp.StandardCost DESC

-- exercise 16: return clients of middlename is not null
SELECT *
FROM SalesLT.Customer as sc
WHERE sc.MiddleName is NOT NULL
ORDER BY sc.MiddleName ASC
