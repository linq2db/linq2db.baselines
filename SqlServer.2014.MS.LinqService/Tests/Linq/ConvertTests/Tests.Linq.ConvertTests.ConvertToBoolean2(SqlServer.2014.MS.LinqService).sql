BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] <> 4.5, 1, 0) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] = 0

