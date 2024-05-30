BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF(CAST([t].[MoneyValue] AS Float) * 2 = Round(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> Round(CAST([t].[MoneyValue] AS Float), 1), Round(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2, Round(CAST([t].[MoneyValue] AS Float), 1)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

