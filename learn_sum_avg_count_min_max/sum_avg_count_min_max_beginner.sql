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
