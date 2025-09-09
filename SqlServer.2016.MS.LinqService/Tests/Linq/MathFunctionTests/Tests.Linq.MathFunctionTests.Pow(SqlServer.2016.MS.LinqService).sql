BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(Power(CAST([p].[MoneyValue] AS Float), 3)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

