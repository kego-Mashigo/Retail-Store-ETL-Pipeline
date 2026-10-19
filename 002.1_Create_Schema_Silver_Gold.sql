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