/*
Create Database and Schemas
============================================================
This script creates a new database called 'DataWarehouse' after checking if it already exist.
the script sets up three schemas within the database: 'bronze', 'silver', 'gold'.
if the database exists, it will be dropped and recreated, and all the data will be deleted.

WARNING: ensure you have backups before running this script.
*/

USE master;
Go

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (Select 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
