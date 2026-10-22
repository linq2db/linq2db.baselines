-- Access.Ace.Odbc AccessODBC
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Region] = 'EU', [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Region] = '2000', [g_1].[Amount], NULL))
FROM
	[RegionSales] [g_1]
GROUP BY
	[g_1].[Category]

