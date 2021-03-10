BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Atn2(Convert(Float, [p].[MoneyValue]) / 15, 0) * 15) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

