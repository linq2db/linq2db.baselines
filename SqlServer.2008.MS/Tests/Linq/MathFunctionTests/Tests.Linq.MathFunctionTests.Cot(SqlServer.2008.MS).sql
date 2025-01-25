BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Cot(CAST([t].[MoneyValue] AS Float) / 15) * 15) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

