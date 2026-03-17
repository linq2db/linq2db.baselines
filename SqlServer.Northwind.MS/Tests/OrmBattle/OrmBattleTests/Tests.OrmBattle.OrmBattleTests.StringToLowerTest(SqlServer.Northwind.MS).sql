-- SqlServer.Northwind.MS SqlServer.2019

SELECT TOP (1)
	[c_1].[CustomerID],
	[c_1].[CompanyName],
	[c_1].[ContactName],
	[c_1].[ContactTitle],
	[c_1].[Address],
	[c_1].[City],
	[c_1].[Region],
	[c_1].[PostalCode],
	[c_1].[Country],
	[c_1].[Phone],
	[c_1].[Fax]
FROM
	[Customers] [c_1]
WHERE
	Lower([c_1].[City]) = N'seattle'

