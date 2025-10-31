BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(CAST([p].[MoneyValue] AS Float) * 2 = ROUND(CAST([p].[MoneyValue] AS Float) * 2, 1) AND CAST([p].[MoneyValue] AS Float) <> ROUND(CAST([p].[MoneyValue] AS Float), 1), ROUND(CAST([p].[MoneyValue] AS Float) / 2, 1) * 2, ROUND(CAST([p].[MoneyValue] AS Float), 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

