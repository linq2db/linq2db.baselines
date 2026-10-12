-- Access.Ace.OleDb AccessOleDb
SELECT
	[g_1].[Category],
	SUM([g_1].[Amount]),
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)),
	MAX(IIF([g_1].[Year] = 2000, [g_1].[Note], NULL)),
	MAX(IIF([g_1].[Year] = 2010, [g_1].[Note], NULL))
FROM
	[Sales] [g_1]
GROUP BY
	[g_1].[Category]

