BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Log10(CAST([p].[MoneyValue] AS Float))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

