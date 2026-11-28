-- Access.Ace.OleDb AccessOleDb
SELECT DISTINCT TOP 2
	[x].[Amount]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Key_1],
	CStr('Y2000'),
	[t1].[Y2000]
FROM
	(
		SELECT
			SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [t1]
WHERE
	[t1].[Y2000] IS NOT NULL
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

-- Access.Ace.OleDb AccessOleDb
SELECT
	[row_1].[Category],
	SUM(IIF([row_1].[Year] = 2020, [row_1].[Amount], NULL))
FROM
	[CategorySales] [row_1]
GROUP BY
	[row_1].[Category]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[row_1].[Category],
	SUM(IIF([row_1].[Year] = 2020, [row_1].[Amount], NULL))
FROM
	[CategorySales] [row_1]
GROUP BY
	[row_1].[Category]

