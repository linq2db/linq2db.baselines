BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Power(Convert(Float, [p].[MoneyValue]), 3)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

