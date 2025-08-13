BeforeExecute
-- SqlServer.2019

SELECT
	IIF([t].[c1] * 2 = ROUND([t].[c1] * 2, 5) AND [t].[c1] <> ROUND([t].[c1], 5), ROUND([t].[c1] / 2, 5) * 2, ROUND([t].[c1], 5))
FROM
	(
		SELECT
			IIF(CAST([p].[MoneyValue] AS Float) * 2 = ROUND(CAST([p].[MoneyValue] AS Float) * 2, 1) AND CAST([p].[MoneyValue] AS Float) <> ROUND(CAST([p].[MoneyValue] AS Float), 1), ROUND(CAST([p].[MoneyValue] AS Float) / 2, 1) * 2, ROUND(CAST([p].[MoneyValue] AS Float), 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

