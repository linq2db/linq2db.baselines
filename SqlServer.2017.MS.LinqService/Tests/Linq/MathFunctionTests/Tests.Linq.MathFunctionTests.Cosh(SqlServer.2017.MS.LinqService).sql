BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(((Exp(Convert(Float, [t].[MoneyValue]) / 15) + Exp(-(Convert(Float, [t].[MoneyValue]) / 15))) / 2) * 15) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

