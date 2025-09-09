BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(CAST(Power(CAST([p].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal(18, 10))) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

