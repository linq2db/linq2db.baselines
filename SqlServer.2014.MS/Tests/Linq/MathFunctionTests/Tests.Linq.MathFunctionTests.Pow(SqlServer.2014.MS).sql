BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Power(CAST([p].[MoneyValue] AS Float), 3)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

