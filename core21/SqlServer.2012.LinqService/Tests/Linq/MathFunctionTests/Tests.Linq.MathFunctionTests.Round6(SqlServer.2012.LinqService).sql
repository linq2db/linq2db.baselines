BeforeExecute
-- SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Round(Convert(Float, [p].[MoneyValue]), 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

