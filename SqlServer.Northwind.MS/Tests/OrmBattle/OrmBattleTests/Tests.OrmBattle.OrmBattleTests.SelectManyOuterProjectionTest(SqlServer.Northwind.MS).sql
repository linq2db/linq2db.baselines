BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[i].[CustomerID],
	[i].[CompanyName],
	[i].[ContactName],
	[i].[ContactTitle],
	[i].[Address],
	[i].[City],
	[i].[Region],
	[i].[PostalCode],
	[i].[Country],
	[i].[Phone],
	[i].[Fax]
FROM
	[Customers] [i]
		INNER JOIN [Orders] [a_Orders] ON [i].[CustomerID] = [a_Orders].[CustomerID]

