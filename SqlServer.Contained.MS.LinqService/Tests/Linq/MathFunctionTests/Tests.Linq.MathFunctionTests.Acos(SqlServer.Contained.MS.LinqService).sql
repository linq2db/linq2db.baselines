BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Acos(CAST([t].[MoneyValue] AS Float) / 15) * 15) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

