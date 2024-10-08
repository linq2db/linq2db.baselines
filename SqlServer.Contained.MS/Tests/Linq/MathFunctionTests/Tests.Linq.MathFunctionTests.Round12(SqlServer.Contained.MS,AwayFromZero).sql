BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t_1].[MoneyValue]
FROM
	(
		SELECT
			ROUND([t].[MoneyValue], 1) as [c1],
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0 AND [t_1].[c1] <> 7

