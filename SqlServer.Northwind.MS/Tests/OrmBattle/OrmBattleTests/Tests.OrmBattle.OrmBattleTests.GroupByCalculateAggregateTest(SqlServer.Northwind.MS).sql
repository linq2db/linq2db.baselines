BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	SUM([g_1].[Freight])
FROM
	[Orders] [g_1]
		INNER JOIN [Customers] [a_Customer] ON [g_1].[CustomerID] = [a_Customer].[CustomerID] AND [g_1].[CustomerID] IS NOT NULL
GROUP BY
	[a_Customer].[CustomerID]

