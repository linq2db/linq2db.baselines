BeforeExecute
-- SqlServer.2014

SELECT
	IIF([t_1].[c1] * 2 = Round([t_1].[c1] * 2, 5) AND [t_1].[c1] <> Round([t_1].[c1], 5), Round([t_1].[c1] / 2, 5) * 2, Round([t_1].[c1], 5))
FROM
	(
		SELECT
			IIF(CAST([t].[MoneyValue] AS Float) * 2 = Round(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> Round(CAST([t].[MoneyValue] AS Float), 1), Round(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2, Round(CAST([t].[MoneyValue] AS Float), 1)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

