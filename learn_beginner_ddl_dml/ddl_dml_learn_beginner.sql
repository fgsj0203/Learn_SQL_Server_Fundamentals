/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Date release: 06-10-2025, in format Brazil
Version: 1.0
Description: File with scripts of CREATE, UPDATE, INSERT, DELETE and DROP
*/

-- Create database ddl_dml_learn
--CREATE DATABASE LearnManipulationTable

--USE LearnManipulationTable

-- Create backup of database LearnManipulationTable
-- BACKUP DATABASE LearnManipulationTable
-- TO DISK = 'C:\Career_Technology\sql_server_learn\Adventure_Works_2022_LT\backup_database\LearnManipulationTable.bak'

-- Create table "Training" with columns trainingID, name, durationHours
-- CREATE TABLE training (trainingID INTEGER IDENTITY Primary Key NOT NULL,
                       --[name] VARCHAR(50) NOT NULL,
                       --durationHours INTEGER NOT NULL)

-- Create table "Employee" with columns employeeID, name, jobTitle, salary
-- CREATE TABLE employee (employeeID INTEGER IDENTITY Primary Key NOT NULL,
                       --[name] VARCHAR(50) NOT NULL,
                       --jobTitle VARCHAR(50) NOT NULL,
                       --salary DECIMAL(8,2) NOT NULL)

-- Create table "Department" with columns departmentID, name, location
-- CREATE TABLE department(departmentID INTEGER IDENTITY Primary Key NOT NULL,
--                        [name] VARCHAR(50) NOT NULL,
--                        [location] VARCHAR(50) NOT NULL)

-- Create table "CustomerTest" with columns customerID, name, email, telephone
-- CREATE TABLE customerTest (customerID INTEGER IDENTITY Primary Key NOT NULL,
--                          [name] VARCHAR(50) NOT NULL,
--                          email VARCHAR(50) NOT NULL,
--                          telephone VARCHAR(50) NOT NULL)

-- Create table "ProductTest" with columns productID, name, price
-- CREATE TABLE productTest (productID INTEGER IDENTITY Primary Key NOT NULL,
--                          [name] VARCHAR(50) NOT NULL,
--                          price DECIMAL(8,2) NOT NULL)

-- Create table "OrderTest" with columns orderID, dateOrder, customerID
-- CREATE TABLE orderTest (orderID INTEGER IDENTITY Primary Key NOT NULL,
--                        dateOrder DATETIME NOT NULL,
--                        customerID INT NOT NULL,
--                        CONSTRAINT FK_Order_Customer FOREIGN KEY (customerID) REFERENCES customerTest(customerID))

-- Inserting column DateCreate of type DATETIME in table CustomerTest
-- ALTER TABLE customerTest
-- ADD dateCreate datetime

-- Create table of name CategoryProduct with columns categoryID and nameCategory
-- CREATE TABLE categoryProduct (categoryID INTEGER IDENTITY Primary Key NOT NULL,
--                              nameCategory VARCHAR(50) NOT NULL)

-- Create table of name providerProduct with columns providerID, nameProvider and cnpj
-- CREATE TABLE providerProduct(providerID INTEGER IDENTITY Primary Key NOT NULL,
--                             nameProvider VARCHAR(50) NOT NULL,
--                             cnpj VARCHAR(30) NOT NULL)

-- Create table of name buy with columns buyID, dateBuy, providerID (Foreign Key), valueTotal 
-- CREATE TABLE buy (buyID INTEGER IDENTITY Primary Key NOT NULL,
--                  dateBuy DATETIME NOT NULL,
--                  providerID INT NOT NULL,
--                  CONSTRAINT FK_Buy_ProviderProduct FOREIGN KEY (providerID) REFERENCES providerProduct(providerID))

-- CREATE TABLE payment(paymentID INTEGER IDENTITY Primary Key NOT NULL,
--                     orderID INT NOT NULL,
--                     CONSTRAINT FK_payment_orderTest FOREIGN KEY (orderID) REFERENCES orderTest(orderID))
-- Table updated with columns valuePayment and datePayment

--------------------------------------- INSERTING DATA IN TABLES --------------------------------------- 
INSERT INTO customerTest([name], email, telephone, dateCreate)
VALUES ('Francisco Gomes', 'fgsj.dev@outlook.com', '81-996757122', '10-07-2025'),
       ('Jackilene de Melo', 'melo.jackilene@gmail.com', '81-123456789', '07-10-2025')

-- Update table for alter data in two columns for difference with first ID customer
-- UPDATE customerTest
-- SET email = 'fgsj.cin@gmail.com', name = 'Francisco Junior'
-- WHERE customerID = 2
