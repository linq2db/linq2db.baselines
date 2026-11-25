-- SqlServer.2016
SELECT
	[e].[IsDeleted],
	[e].[CustomerID],
	[e].[CompanyName],
	[e].[ContactName],
	[e].[ContactTitle],
	[e].[Address],
	[e].[City],
	[e].[Region],
	[e].[PostalCode],
	[e].[Country],
	[e].[Phone],
	[e].[Fax]
FROM
	[Customers] [e]
WHERE
	[e].[Address] LIKE N'%a%' ESCAPE N'~'



Parameters:
@ef_filter__p1='?' (DbType = Boolean)

SELECT [c].[CustomerID], [c].[Address], [c].[City], [c].[CompanyName], [c].[ContactName], [c].[ContactTitle], [c].[Country], [c].[Fax], [c].[IsDeleted], [c].[Phone], [c].[PostalCode], [c].[Region]
FROM [Customers] AS [c]
WHERE (@ef_filter__p1 = CAST(1 AS bit) OR [c].[IsDeleted] = CAST(0 AS bit) OR [c].[IsDeleted] = CAST(0 AS bit)) AND [c].[Address] LIKE N'%a%'


