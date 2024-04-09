BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[a_Customer].[CustomerID],
	[a_Customer].[CompanyName],
	[a_Customer].[ContactName],
	[a_Customer].[ContactTitle],
	[a_Customer].[Address],
	[a_Customer].[City],
	[a_Customer].[Region],
	[a_Customer].[PostalCode],
	[a_Customer].[Country],
	[a_Customer].[Phone],
	[a_Customer].[Fax]
FROM
	[Orders] [t1]
		INNER JOIN [Customers] [a_Customer] ON ([t1].[CustomerID] = [a_Customer].[CustomerID] OR [t1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
GROUP BY
	[a_Customer].[CustomerID],
	[a_Customer].[CompanyName],
	[a_Customer].[ContactName],
	[a_Customer].[ContactTitle],
	[a_Customer].[Address],
	[a_Customer].[City],
	[a_Customer].[Region],
	[a_Customer].[PostalCode],
	[a_Customer].[Country],
	[a_Customer].[Phone],
	[a_Customer].[Fax]

