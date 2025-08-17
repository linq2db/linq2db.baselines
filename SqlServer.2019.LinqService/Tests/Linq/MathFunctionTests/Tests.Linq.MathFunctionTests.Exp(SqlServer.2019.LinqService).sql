BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(Exp(CAST([p].[MoneyValue] AS Float))) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

