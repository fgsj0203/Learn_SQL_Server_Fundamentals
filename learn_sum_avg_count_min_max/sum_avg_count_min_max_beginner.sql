/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Date release: 29-09-2025, in format Brazil
Version: 1.0
Description: File with scripts of exercises "SUM, AVG, COUNT, MIN, MAX"
*/

-- exercise 01: count amount clients in table
SELECT COUNT(*) as 'Qtd de clientes na tabela'
FROM SalesLT.Customer as sc

-- exercise 02: return average price of products
SELECT AVG(sp.ListPrice) as 'Preco medio dos produtos'
FROM SalesLT.[Product] as sp

-- exercise 03: return smaller and bigger price of products
SELECT MIN(sp.ListPrice) as 'Produto mais barato', MAX(sp.ListPrice) as 'Produto mais caro'
FROM SalesLT.[Product] as sp

-- exercise 04: return sum of prices in products 
SELECT SUM(sp.ListPrice) as 'Soma de todos os precos'
FROM SalesLT.[Product] as sp

-- exercise 05: count all products is color not null
SELECT COUNT(sp.ProductID) as 'Qtd de produtos com cor'
FROM SalesLT.[Product] as sp
WHERE sp.Color is NOT NULL

-- exercise 06: return of amount clients for state/province 
SELECT COUNT(sc.CustomerID) as 'Qtd clientes', sa.StateProvince as 'Estado/Provincia'
FROM SalesLT.Customer as sc INNER JOIN SalesLT.[Address] as sa ON sc.CustomerID = sa.AddressID
GROUP BY sa.StateProvince

-- exercise 07: return of clients for city
SELECT COUNT(sc.CustomerID) as 'Clientes', sa.City as 'Cidade'
FROM SalesLT.Customer as sc INNER JOIN SalesLT.[Address] as sa ON sc.CustomerID = sa.AddressID
GROUP BY sa.City

-- exercise 08: return average price for color
SELECT AVG(sp.StandardCost) as 'Preco medio', sp.Color as 'Cor do produto' 
FROM SalesLT.[Product] as sp
GROUP BY sp.Color

-- exercise 09: return amount Products based in ProductCategoryID
SELECT COUNT(sp.ProductID) as 'QTD do produto por ID', sp.ProductCategoryID as 'ID do produto'
FROM SalesLT.[Product] as sp
GROUP BY sp.ProductCategoryID

-- exercise 10: return sum total of price of product category
SELECT SUM(sp.ListPrice) as 'Soma total por produto', spc.[Name] as 'Categoria produto'
FROM SalesLT.[Product] as sp INNER JOIN SalesLT.ProductCategory as spc ON sp.ProductCategoryID = spc.ProductCategoryID
GROUP BY spc.[Name]

-- exercise 11: return sum total values of orders in SalesLT.SalesOrderHeader
SELECT COUNT(ssoh.SalesOrderID) as 'Qtd de ordens de vendas'
FROM SalesLT.SalesOrderHeader as ssoh

-- exercise 12: return value of sum total orders
SELECT SUM(ssoh.TotalDue) as 'Valor total dos pedidos'
FROM SalesLT.SalesOrderHeader as ssoh

-- exercise 13: return value average of freight orders
SELECT AVG(ssoh.Freight) as 'Preco medio do frete dos pedidos'
FROM SalesLT.SalesOrderHeader as ssoh

-- exercise 14: return of smaller and bigger value of freight
SELECT MIN(ssoh.Freight) as 'Frete mais barato', MAX(ssoh.Freight) as 'Frete mais caro'
FROM SalesLT.SalesOrderHeader as ssoh

-- exercise 15: return amount of sales based in orders ID
SELECT COUNT(ssoh.CustomerID) as 'Qtd de venda baseado no ID-cliente'
FROM SalesLT.SalesOrderHeader as ssoh
