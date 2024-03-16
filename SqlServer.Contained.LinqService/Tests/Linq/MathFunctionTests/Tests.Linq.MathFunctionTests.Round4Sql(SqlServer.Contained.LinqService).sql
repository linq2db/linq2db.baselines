BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	IIF([t_1].[c1] * 2 = Round([t_1].[c1] * 2, 5) AND [t_1].[c1] <> Round([t_1].[c1], 5), Round([t_1].[c1] / 2, 5) * 2, Round([t_1].[c1], 5))
FROM
	(
		SELECT
			IIF(Convert(Float, [t].[MoneyValue]) * 2 = Round(Convert(Float, [t].[MoneyValue]) * 2, 1) AND Convert(Float, [t].[MoneyValue]) <> Round(Convert(Float, [t].[MoneyValue]), 1), Round(Convert(Float, [t].[MoneyValue]) / 2, 1) * 2, Round(Convert(Float, [t].[MoneyValue]), 1)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

