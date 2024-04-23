BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	SUM([g_1].[Freight])
FROM
	[Orders] [g_1]
		INNER JOIN [Customers] [a_Customer] ON [g_1].[CustomerID] = [a_Customer].[CustomerID]
GROUP BY
	[a_Customer].[CustomerID]

