BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	IIF([t_1].[c1] * 2 = ROUND([t_1].[c1] * 2, 5) AND [t_1].[c1] <> ROUND([t_1].[c1], 5), ROUND([t_1].[c1] / 2, 5) * 2, ROUND([t_1].[c1], 5))
FROM
	(
		SELECT
			IIF(CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1), ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2, ROUND(CAST([t].[MoneyValue] AS Float), 1)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

