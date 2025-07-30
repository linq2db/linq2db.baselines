BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Abs([p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] > 0

