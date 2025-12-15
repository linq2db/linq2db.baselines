-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] <> 0, 1, 0) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] = 1

