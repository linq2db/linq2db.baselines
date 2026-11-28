-- SqlServer.2012
SELECT DISTINCT TOP (2)
	CAST(Floor([x].[Amount]) AS Int)
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = N'A'

-- SqlServer.2012
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND CAST(Floor([x].[Amount]) AS Int) = @castOfA

-- SqlServer.2012
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[u_1].[Key_1]
FROM
	(
		SELECT
			CAST(Floor(SUM(IIF([u].[Year] = 2010, [u].[Amount], NULL))) AS Int) as [Value_1],
			[u].[Category] as [Key_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			CAST(Floor(SUM(IIF([g_1].[Year] = 2020, [g_1].[Amount], NULL))) AS Int) as [Value_1],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Value_1] = @castOfA

-- SqlServer.2012
SELECT
	[u_1].[Value_1]
FROM
	(
		SELECT
			CAST(N'Y2010' AS NVarChar(4000)) as [Name],
			[u].[Category] as [Key_1],
			CAST(Floor(SUM(IIF([u].[Year] = 2010, [u].[Amount], NULL))) AS Int) as [Value_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			CAST(N'Y2020' AS NVarChar(4000)) as [Name],
			[g_1].[Category] as [Key_1],
			CAST(Floor(SUM(IIF([g_1].[Year] = 2020, [g_1].[Amount], NULL))) AS Int) as [Value_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Name] = N'Y2010'
ORDER BY
	[u_1].[Key_1]

-- SqlServer.2012
SELECT
	[u_1].[Value_1]
FROM
	(
		SELECT
			CAST(N'Y2010' AS NVarChar(4000)) as [Name],
			CAST(Floor(SUM(IIF([u].[Year] = 2010, [u].[Amount], NULL))) AS Int) as [Value_1]
		FROM
			[CategorySales] [u]
		GROUP BY
			[u].[Category]
		UNION ALL
		SELECT
			CAST(N'Y2020' AS NVarChar(4000)) as [Name],
			CAST(Floor(SUM(IIF([g_1].[Year] = 2020, [g_1].[Amount], NULL))) AS Int) as [Value_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u_1]
WHERE
	[u_1].[Name] = N'Y2020'

