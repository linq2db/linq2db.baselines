BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] * 2 = Round([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> Round([t].[MoneyValue], 1), Round([t].[MoneyValue] / 2, 1) * 2, Round([t].[MoneyValue], 1)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0 AND [t_1].[c1] <> 7

