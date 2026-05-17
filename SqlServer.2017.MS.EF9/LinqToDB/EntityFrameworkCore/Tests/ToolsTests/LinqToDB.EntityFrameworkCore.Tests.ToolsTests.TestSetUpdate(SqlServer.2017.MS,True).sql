Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT TOP(1) [c].[CustomerID], [c].[Address], [c].[City], [c].[CompanyName], [c].[ContactName], [c].[ContactTitle], [c].[Country], [c].[Fax], [c].[IsDeleted], [c].[Phone], [c].[PostalCode], [c].[Region]
FROM [Customers] AS [c]
WHERE @__ef_filter__p_0 = CAST(1 AS bit) OR [c].[IsDeleted] = CAST(0 AS bit) OR [c].[IsDeleted] = CAST(0 AS bit)


-- SqlServer.2017
DECLARE @CompanyName NVarChar(40) -- String
SET     @CompanyName = N'Alfreds Futterkiste'
DECLARE @CustomerId NVarChar(5) -- String
SET     @CustomerId = N'ALFKI'

UPDATE
	[Customers]
SET
	[CompanyName] = @CompanyName
WHERE
	[Customers].[IsDeleted] = 0 AND [Customers].[CustomerID] = @CustomerId



