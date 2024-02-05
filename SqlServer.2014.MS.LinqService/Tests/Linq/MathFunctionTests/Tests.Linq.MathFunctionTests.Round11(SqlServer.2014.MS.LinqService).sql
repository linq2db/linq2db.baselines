BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(Convert(Float, [p].[MoneyValue]) * 2 = Round(Convert(Float, [p].[MoneyValue]) * 2, 1) AND Convert(Float, [p].[MoneyValue]) <> Round(Convert(Float, [p].[MoneyValue]), 1), Round(Convert(Float, [p].[MoneyValue]) / 2, 1) * 2, Round(Convert(Float, [p].[MoneyValue]), 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

