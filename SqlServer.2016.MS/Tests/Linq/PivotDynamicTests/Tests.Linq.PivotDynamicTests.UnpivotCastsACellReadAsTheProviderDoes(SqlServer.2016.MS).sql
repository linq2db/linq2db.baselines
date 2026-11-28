-- SqlServer.2016.MS SqlServer.2016
SELECT DISTINCT TOP (2)
	CAST(Floor([x].[Amount]) AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = N'A'

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Key_1],
	CAST(N'Y2000' AS NVarChar(4000)),
	CAST(Floor([t1].[Y2000]) AS Int)
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
	CAST(N'Y2010' AS NVarChar(4000)),
	CAST(Floor([t2].[Y2010]) AS Int)
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

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[row_1].[Category],
	CAST(Floor(SUM(IIF([row_1].[Year] = 2020, [row_1].[Amount], NULL))) AS Int)
FROM
	[CategorySales] [row_1]
GROUP BY
	[row_1].[Category]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[row_1].[Category],
	CAST(Floor(SUM(IIF([row_1].[Year] = 2020, [row_1].[Amount], NULL))) AS Int)
FROM
	[CategorySales] [row_1]
GROUP BY
	[row_1].[Category]

