-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			ROUND([p].[MoneyValue], 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

