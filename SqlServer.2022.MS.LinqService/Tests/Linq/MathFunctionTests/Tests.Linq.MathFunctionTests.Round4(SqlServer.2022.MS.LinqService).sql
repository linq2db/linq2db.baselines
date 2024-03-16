BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF(Convert(Float, [t].[MoneyValue]) * 2 = Round(Convert(Float, [t].[MoneyValue]) * 2, 1) AND Convert(Float, [t].[MoneyValue]) <> Round(Convert(Float, [t].[MoneyValue]), 1), Round(Convert(Float, [t].[MoneyValue]) / 2, 1) * 2, Round(Convert(Float, [t].[MoneyValue]), 1)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

