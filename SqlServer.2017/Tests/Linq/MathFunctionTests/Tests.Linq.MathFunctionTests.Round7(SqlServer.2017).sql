-- SqlServer.2017
SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5, ROUND([p].[MoneyValue] * 0.5, 0) * 2, ROUND([p].[MoneyValue], 0)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

