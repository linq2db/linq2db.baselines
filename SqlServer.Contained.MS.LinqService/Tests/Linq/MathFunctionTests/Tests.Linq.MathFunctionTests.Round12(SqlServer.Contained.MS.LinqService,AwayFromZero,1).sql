BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	(
		SELECT
			ROUND([p].[MoneyValue], 1) as [c1],
			[p].[MoneyValue]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

