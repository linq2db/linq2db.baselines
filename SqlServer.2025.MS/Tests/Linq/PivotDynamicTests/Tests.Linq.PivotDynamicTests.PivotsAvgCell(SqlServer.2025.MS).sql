-- SqlServer.2025.MS SqlServer.2025
SELECT
	[g_1].[Category],
	AVG(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

