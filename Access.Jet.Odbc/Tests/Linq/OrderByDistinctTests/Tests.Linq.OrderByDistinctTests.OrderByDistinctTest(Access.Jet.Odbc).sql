-- Access.Jet.Odbc AccessODBC

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

-- Access.Jet.Odbc AccessODBC

SELECT TOP 3
	[x].[DuplicateData]
FROM
	(
		SELECT
			MAX([g_1].[OrderData1]) as [OrderData1],
			[g_1].[DuplicateData]
		FROM
			[OrderByDistinctData] [g_1]
		GROUP BY
			[g_1].[DuplicateData]
	) [x]
ORDER BY
	[x].[OrderData1]

-- Access.Jet.Odbc AccessODBC

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

-- Access.Jet.Odbc AccessODBC

SELECT TOP 3
	[x].[DuplicateData]
FROM
	(
		SELECT
			MIN([g_1].[OrderData1]) as [OrderData1],
			[g_1].[DuplicateData]
		FROM
			[OrderByDistinctData] [g_1]
		GROUP BY
			[g_1].[DuplicateData]
	) [x]
ORDER BY
	[x].[OrderData1] DESC

