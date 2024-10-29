BeforeExecute
-- SqlServer.2016

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Cos(CAST([p].[MoneyValue] AS Float) / 15) * 15) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

