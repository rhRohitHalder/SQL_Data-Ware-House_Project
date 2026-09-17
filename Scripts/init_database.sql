/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'datawarehouse' after checking if it already exists. 
    If the database exists, active connections are terminated, and it is dropped and recreated.
    Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
    
WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


-- 1. Drop the database and automatically terminate any active connections
-- DROP DATABASE IF EXISTS datawarehouse WITH (FORCE);

-- 2. Create the clean database
CREATE DATABASE datawarehouse;

-- 3. Switch context to the new database
-- \c datawarehouse

-- 4. Create the schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
