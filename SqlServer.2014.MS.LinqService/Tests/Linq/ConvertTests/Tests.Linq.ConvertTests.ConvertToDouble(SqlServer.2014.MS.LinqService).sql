BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CAST([t].[MoneyValue] AS Float) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

