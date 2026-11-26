-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Key_1],
	CStr('Y2000'),
	[t1].[Value_1]
FROM
	(
		SELECT
			SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Value_1],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [t1]
WHERE
	[t1].[Value_1] IS NOT NULL
UNION ALL
SELECT
	[t2].[Key_1],
	CStr('Y2010'),
	[t2].[Y2010]
FROM
	(
		SELECT
			SUM(IIF([g_2].[Year] = 2010, [g_2].[Amount], NULL)) as [Y2010],
			[g_2].[Category] as [Key_1]
		FROM
			[CategorySales] [g_2]
		GROUP BY
			[g_2].[Category]
	) [t2]
WHERE
	[t2].[Y2010] IS NOT NULL

