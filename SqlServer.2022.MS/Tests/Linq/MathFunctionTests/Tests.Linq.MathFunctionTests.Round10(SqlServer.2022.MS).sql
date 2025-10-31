BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 1), ROUND([p].[MoneyValue] / 2, 1) * 2, ROUND([p].[MoneyValue], 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

