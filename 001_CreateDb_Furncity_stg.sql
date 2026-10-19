-- Create the staging database.
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = N'Furncity_stg'
)
BEGIN
    CREATE DATABASE [Furncity_stg];
END;
GO

-- Create the data warehouse database.
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = N'Furncity_dwh'
)
BEGIN
    CREATE DATABASE [Furncity_dwh];
END;
GO

-- Create the Bronze schema in staging.
USE [Furncity_stg];
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = N'Bronze'
)
BEGIN
    EXEC(N'CREATE SCHEMA [Bronze] AUTHORIZATION [dbo];');
END;
GO

-- Create the Silver and Gold schemas in the warehouse.
USE [Furncity_dwh];
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = N'Silver'
)
BEGIN
    EXEC(N'CREATE SCHEMA [Silver] AUTHORIZATION [dbo];');
END;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = N'Gold'
)
BEGIN
    EXEC(N'CREATE SCHEMA [Gold] AUTHORIZATION [dbo];');
END;
GO