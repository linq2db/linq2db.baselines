BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] >= 5.1, [p].[MoneyValue], 5.1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

