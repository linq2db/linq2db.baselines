BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST(Floor(IIF([p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5 AND (FLOOR([p].[MoneyValue]) % 2) = 0, FLOOR([p].[MoneyValue]), ROUND([p].[MoneyValue], 0))) AS BigInt) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

