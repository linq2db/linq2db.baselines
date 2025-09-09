BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(-([p].[MoneyValue] + 1)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

