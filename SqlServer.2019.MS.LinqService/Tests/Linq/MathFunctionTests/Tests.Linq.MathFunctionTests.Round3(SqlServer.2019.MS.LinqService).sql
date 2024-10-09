BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t_1].[MoneyValue]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] * 2 = ROUND([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> ROUND([t].[MoneyValue], 1), ROUND([t].[MoneyValue] / 2, 1) * 2, ROUND([t].[MoneyValue], 1)) as [c1],
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0 AND [t_1].[c1] <> 7

