BeforeExecute
-- SqlServer.2017

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(((Exp(CAST([p].[MoneyValue] AS Float) / 15) + Exp(-(CAST([p].[MoneyValue] AS Float) / 15))) / 2) * 15) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

