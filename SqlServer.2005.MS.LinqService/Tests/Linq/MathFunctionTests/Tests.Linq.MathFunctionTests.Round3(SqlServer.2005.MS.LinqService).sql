BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t_1].[MoneyValue]
FROM
	(
		SELECT
			CASE
				WHEN [t].[MoneyValue] * 2 = ROUND([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> ROUND([t].[MoneyValue], 1)
					THEN ROUND([t].[MoneyValue] / 2, 1) * 2
				ELSE ROUND([t].[MoneyValue], 1)
			END as [c1],
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0 AND [t_1].[c1] <> 7

