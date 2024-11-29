BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CAST(Floor(IIF([t].[MoneyValue] - FLOOR([t].[MoneyValue]) = 0.5 AND (FLOOR([t].[MoneyValue]) % 2) = 0, FLOOR([t].[MoneyValue]), ROUND([t].[MoneyValue], 0))) AS BigInt) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

