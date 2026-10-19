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
