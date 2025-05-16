BeforeExecute
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
	N'123' + IIF([c_1].[City] IS NULL OR LEN([c_1].[City] + N'.') - 1 >= 8, [c_1].[City], REPLICATE(N' ', 8 - (LEN([c_1].[City] + N'.') - 1)) + [c_1].[City]) = N'123 Seattle'

