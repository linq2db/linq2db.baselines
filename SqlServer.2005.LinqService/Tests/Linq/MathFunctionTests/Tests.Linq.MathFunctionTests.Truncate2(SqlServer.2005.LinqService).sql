BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Round(CAST(-[p].[MoneyValue] AS Float), 0, 1) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

