-- SqlServer.SA.MS SqlServer.2019
DECLARE @Year Int -- Int32
SET     @Year = 2000
DECLARE @Quarter Int -- Int32
SET     @Quarter = 1
DECLARE @Quarter_1 Int -- Int32
SET     @Quarter_1 = 2

SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = @Year AND [g_1].[Quarter] = @Quarter, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = @Year AND [g_1].[Quarter] = @Quarter_1, [g_1].[Amount], NULL))
FROM
	[QuarterAmounts] [g_1]
GROUP BY
	[g_1].[Category]
ORDER BY
	[g_1].[Category]

