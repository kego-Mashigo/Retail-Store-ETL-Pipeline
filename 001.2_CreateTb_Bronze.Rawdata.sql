IF OBJECT_ID(N'bronze.Rawdata', N'U') IS NULL
BEGIN
    CREATE TABLE [bronze].[Rawdata]
    (
        [transaction id]   VARCHAR(50),
        [date]             VARCHAR(50),
        [customer id]      VARCHAR(50),
        [gender] VARCHAR(50),
        [age]  VARCHAR(50),
        [product category] VARCHAR(50),
        [quantity]         VARCHAR(50),
        [price per unit]   VARCHAR(50),
        [total amount]     VARCHAR(50)
    );
END;