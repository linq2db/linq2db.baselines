BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

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

