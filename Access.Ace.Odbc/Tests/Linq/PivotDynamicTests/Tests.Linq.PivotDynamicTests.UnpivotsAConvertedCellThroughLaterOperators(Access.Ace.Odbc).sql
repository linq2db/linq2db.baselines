-- Access.Ace.Odbc AccessODBC
SELECT DISTINCT TOP 2
	[x].[Amount]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'

-- Access.Ace.Odbc AccessODBC
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Amount] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[u_1].[Key_1]
FROM
	(
		SELECT
			SUM(IIF([u].[Year] = 2010, [u].[Amount], NULL)) as [Value_1],
			[u].[Category] as [Key_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			SUM(IIF([g_1].[Year] = 2020, [g_1].[Amount], NULL)) as [Value_1],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Value_1] = ?

-- Access.Ace.Odbc AccessODBC
SELECT
	[u_1].[Value_1]
FROM
	(
		SELECT
			CStr('Y2010') as [Name],
			[u].[Category] as [Key_1],
			SUM(IIF([u].[Year] = 2010, [u].[Amount], NULL)) as [Value_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			CStr('Y2020') as [Name],
			[g_1].[Category] as [Key_1],
			SUM(IIF([g_1].[Year] = 2020, [g_1].[Amount], NULL)) as [Value_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Name] = 'Y2010'
ORDER BY
	[u_1].[Key_1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[u_1].[Value_1]
FROM
	(
		SELECT
			CStr('Y2010') as [Name],
			SUM(IIF([u].[Year] = 2010, [u].[Amount], NULL)) as [Value_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			CStr('Y2020') as [Name],
			SUM(IIF([g_1].[Year] = 2020, [g_1].[Amount], NULL)) as [Value_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Name] = 'Y2020'

