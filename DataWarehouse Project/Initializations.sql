-- This is the first step of the Datawarehouse Project
-- Creating Database and Schemas

USE master; -- it is a system local database

-- creating the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- creating schemas for the futher works
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;