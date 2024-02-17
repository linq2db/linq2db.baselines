BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Asin(Convert(Float, [t].[MoneyValue]) / 15) * 15) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0.10000000000000001 OR [t_1].[c1] IS NULL)

