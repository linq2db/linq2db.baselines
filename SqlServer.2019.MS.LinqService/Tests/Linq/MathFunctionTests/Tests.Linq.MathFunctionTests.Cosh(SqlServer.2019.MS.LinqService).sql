BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(((Exp(CAST([p].[MoneyValue] AS Float) / 15) + Exp(-(CAST([p].[MoneyValue] AS Float) / 15))) / 2) * 15) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

