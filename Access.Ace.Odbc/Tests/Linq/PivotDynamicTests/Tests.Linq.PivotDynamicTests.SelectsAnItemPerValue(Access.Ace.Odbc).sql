-- Access.Ace.Odbc AccessODBC
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)),
	COUNT(IIF([g_1].[Year] = 2010, 1, NULL)),
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	COUNT(IIF([g_1].[Year] = 2000, 1, NULL))
FROM
	[StrictSales] [g_1]
GROUP BY
	[g_1].[Category]

