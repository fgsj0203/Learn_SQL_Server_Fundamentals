/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Date release: 06-10-2025, in format Brazil
Version: 1.0
Description: File with scripts of CREATE, UPDATE, INSERT, DELETE and DROP
*/

-- Create database ddl_dml_learn
CREATE DATABASE LearnManipulationTable

-- Create backup of database LearnManipulationTable
BACKUP DATABASE LearnManipulationTable
TO DISK = 'C:\Career_Technology\sql_server_learn\Adventure_Works_2022_LT\backup_database\LearnManipulationTable.bak'

-- Create table "Training" with columns trainingID, name, durationHours
CREATE TABLE training (trainingID INTEGER IDENTITY Primary Key NOT NULL,
                       [name] VARCHAR(50) NOT NULL,
                       durationHours INTEGER NOT NULL)

-- Create table "Employee" with columns employeeID, name, jobTitle, salary
CREATE TABLE employee (employeeID INTEGER IDENTITY Primary Key NOT NULL,
                       [name] VARCHAR(50) NOT NULL,
                       jobTitle VARCHAR(50) NOT NULL,
                       salary DECIMAL(8,2) NOT NULL)

-- Create table "Department" with columns departmentID, name, location
CREATE TABLE department(departmentID INTEGER IDENTITY Primary Key NOT NULL,
                        [name] VARCHAR(50) NOT NULL,
                        [location] VARCHAR(50) NOT NULL)
