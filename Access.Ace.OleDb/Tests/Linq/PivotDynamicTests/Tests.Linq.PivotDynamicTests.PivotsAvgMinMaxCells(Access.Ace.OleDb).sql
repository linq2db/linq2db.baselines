-- Access.Ace.OleDb AccessOleDb
SELECT
	[g_1].[Category],
	AVG(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	MIN(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	MAX(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

