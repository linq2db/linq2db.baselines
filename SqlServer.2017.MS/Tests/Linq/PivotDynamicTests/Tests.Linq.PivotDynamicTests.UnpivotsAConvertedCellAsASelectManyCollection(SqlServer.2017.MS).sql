-- SqlServer.2017.MS SqlServer.2017
SELECT
	[c_1].[Category],
	CAST(Floor([u].[Y2000]) AS Int)
FROM
	(
		SELECT DISTINCT
			[x].[Category]
		FROM
			[CategorySales] [x]
	) [c_1]
		INNER JOIN (
			SELECT
				SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
				[g_1].[Category] as [Key_1]
			FROM
				[CategorySales] [g_1]
			GROUP BY
				[g_1].[Category]
		) [u] ON [u].[Key_1] = [c_1].[Category] OR [u].[Key_1] IS NULL AND [c_1].[Category] IS NULL
WHERE
	[u].[Y2000] IS NOT NULL

-- SqlServer.2017.MS SqlServer.2017
SELECT
	CAST(Floor([t1].[Y2000]) AS Int)
FROM
	(
		SELECT DISTINCT
			[x].[Category]
		FROM
			[CategorySales] [x]
	) [c_1]
		INNER JOIN (
			SELECT
				SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
				[g_1].[Category] as [Key_1]
			FROM
				[CategorySales] [g_1]
			GROUP BY
				[g_1].[Category]
		) [t1] ON [t1].[Key_1] = [c_1].[Category] OR [t1].[Key_1] IS NULL AND [c_1].[Category] IS NULL
WHERE
	[t1].[Y2000] IS NOT NULL

-- SqlServer.2017.MS SqlServer.2017
SELECT
	CAST(Floor([t1].[Y2000]) AS Int)
FROM
	(
		SELECT DISTINCT
			[x].[Category]
		FROM
			[CategorySales] [x]
	) [c_1]
		LEFT JOIN (
			SELECT
				SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
				[g_1].[Category] as [Key_1]
			FROM
				[CategorySales] [g_1]
			GROUP BY
				[g_1].[Category]
		) [t1] ON ([t1].[Key_1] = [c_1].[Category] OR [t1].[Key_1] IS NULL AND [c_1].[Category] IS NULL) AND [t1].[Y2000] IS NOT NULL AND CAST(Floor([t1].[Y2000]) AS Int) > 100

