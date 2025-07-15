BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(Sin(CAST([p].[MoneyValue] AS Float) / 15) * 15) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

