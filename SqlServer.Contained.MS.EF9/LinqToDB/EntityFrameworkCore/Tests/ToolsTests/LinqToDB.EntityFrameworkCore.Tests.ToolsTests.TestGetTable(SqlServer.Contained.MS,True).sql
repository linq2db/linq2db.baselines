-- SqlServer.2019 (asynchronously)

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
	([e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0) AND [e].[City] IS NOT NULL



