USE master

-- Create the data warehouse database.
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = N'Furncity_dwh'
)
BEGIN
    CREATE DATABASE [Furncity_dwh];
END;
