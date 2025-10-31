BeforeExecute
-- SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5 AND (FLOOR([p].[MoneyValue]) % 2) = 0, FLOOR([p].[MoneyValue]), ROUND([p].[MoneyValue], 0)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

