-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT DISTINCT TOP 2
	[x].[Amount]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @castOfA  -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Amount] = @castOfA

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @castOfA  -- Int32
SET     @castOfA = 20

SELECT
	[u_1].[Key_1]
FROM
	(
		SELECT
			SUM(CASE
				WHEN [u].[Year] = 2010 THEN [u].[Amount]
				ELSE NULL
			END) as [Value_1],
			[u].[Category] as [Key_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			SUM(CASE
				WHEN [g_1].[Year] = 2020 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Value_1],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Value_1] = @castOfA

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[u_1].[Value_1]
FROM
	(
		SELECT
			CStr('Y2010') as [Name],
			[u].[Category] as [Key_1],
			SUM(CASE
				WHEN [u].[Year] = 2010 THEN [u].[Amount]
				ELSE NULL
			END) as [Value_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			CStr('Y2020') as [Name],
			[g_1].[Category] as [Key_1],
			SUM(CASE
				WHEN [g_1].[Year] = 2020 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Value_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Name] = 'Y2010'
ORDER BY
	[u_1].[Key_1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[u_1].[Value_1]
FROM
	(
		SELECT
			CStr('Y2010') as [Name],
			SUM(CASE
				WHEN [u].[Year] = 2010 THEN [u].[Amount]
				ELSE NULL
			END) as [Value_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			CStr('Y2020') as [Name],
			SUM(CASE
				WHEN [g_1].[Year] = 2020 THEN [g_1].[Amount]
				ELSE NULL
			END) as [Value_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Name] = 'Y2020'

