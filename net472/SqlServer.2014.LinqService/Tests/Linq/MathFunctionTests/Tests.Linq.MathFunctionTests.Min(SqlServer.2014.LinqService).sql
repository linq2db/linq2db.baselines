BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] < 5, [p].[MoneyValue], 5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0 OR [t].[c1] IS NULL)

