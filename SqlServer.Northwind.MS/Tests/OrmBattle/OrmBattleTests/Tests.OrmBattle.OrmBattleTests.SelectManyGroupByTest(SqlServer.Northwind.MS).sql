-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[a_Customer_1].[CustomerID],
	[a_Customer_1].[CompanyName],
	[a_Customer_1].[ContactName],
	[a_Customer_1].[ContactTitle],
	[a_Customer_1].[Address],
	[a_Customer_1].[City],
	[a_Customer_1].[Region],
	[a_Customer_1].[PostalCode],
	[a_Customer_1].[Country],
	[a_Customer_1].[Phone],
	[a_Customer_1].[Fax]
FROM
	(
		SELECT
			[a_Customer].[CustomerID]
		FROM
			[Orders] [g_1]
				INNER JOIN [Customers] [a_Customer] ON [g_1].[CustomerID] = [a_Customer].[CustomerID]
		GROUP BY
			[a_Customer].[CustomerID]
		HAVING
			COUNT(*) > 20
	) [g_2]
		INNER JOIN [Orders] [o]
			INNER JOIN [Customers] [a_Customer_1] ON [o].[CustomerID] = [a_Customer_1].[CustomerID]
		ON [g_2].[CustomerID] = [a_Customer_1].[CustomerID]

