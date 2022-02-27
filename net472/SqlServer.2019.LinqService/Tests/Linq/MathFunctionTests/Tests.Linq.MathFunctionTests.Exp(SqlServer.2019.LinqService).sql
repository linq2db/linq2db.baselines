BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Exp(Convert(Float, [p].[MoneyValue]))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

