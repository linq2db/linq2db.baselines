BeforeExecute
-- SqlServer.2014

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Tan(CAST([p].[MoneyValue] AS Float) / 15) * 15) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

