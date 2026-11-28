-- Access.Jet.Odbc AccessODBC
SELECT
	[row_1].[Key_1],
	[row_1].[Y2000]
FROM
	(
		SELECT
			SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [row_1]
WHERE
	[row_1].[Y2000] IS NOT NULL

-- Access.Jet.Odbc AccessODBC
SELECT
	[row_1].[Key_1],
	[row_1].[Y2000]
FROM
	(
		SELECT
			SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [row_1]
WHERE
	[row_1].[Y2000] IS NOT NULL

