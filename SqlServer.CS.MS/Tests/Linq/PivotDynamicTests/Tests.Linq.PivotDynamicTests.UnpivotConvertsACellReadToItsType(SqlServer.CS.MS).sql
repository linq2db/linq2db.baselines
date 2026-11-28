-- SqlServer.CS.MS SqlServer.2025
SELECT
	[row_1].[Key_1],
	CAST(Floor([row_1].[Y2000]) AS Int)
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

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[row_1].[Key_1],
	CAST(Floor([row_1].[Y2000]) AS Int)
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

