BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	SUM([g_1].[Freight]),
	MIN([g_1].[Freight]),
	MAX([g_1].[Freight]),
	AVG([g_1].[Freight])
FROM
	[Orders] [g_1]
		INNER JOIN [Customers] [a_Customer] ON [g_1].[CustomerID] = [a_Customer].[CustomerID] AND [g_1].[CustomerID] IS NOT NULL
GROUP BY
	[a_Customer].[CustomerID]

