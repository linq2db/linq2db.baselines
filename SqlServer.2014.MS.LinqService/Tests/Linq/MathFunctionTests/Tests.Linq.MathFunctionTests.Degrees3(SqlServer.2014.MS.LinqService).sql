BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Degrees(CAST(Floor([t].[MoneyValue]) AS Int)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	CAST([t_1].[c1] AS Float) <> 0.10000000000000001

