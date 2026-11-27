-- SqlServer.CS.MS SqlServer.2025
SELECT
	[u].[Key_1]
FROM
	(
		SELECT
			SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)) as [Y2000],
			[g_1].[Category] as [Key_1]
		FROM
			[CategorySales] [g_1]
		GROUP BY
			[g_1].[Category]
	) [u]
WHERE
	[u].[Y2000] IS NOT NULL AND CAST(Floor([u].[Y2000]) AS Int) = 10

