-- SqlServer.2017

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
	[e].[Address] IS NOT NULL



