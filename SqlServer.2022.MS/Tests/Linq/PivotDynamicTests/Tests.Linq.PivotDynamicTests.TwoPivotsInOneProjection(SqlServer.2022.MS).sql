-- SqlServer.2022.MS SqlServer.2022
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Region] = N'EU', [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Region] = N'2000', [g_1].[Amount], NULL))
FROM
	[RegionSales] [g_1]
GROUP BY
	[g_1].[Category]

