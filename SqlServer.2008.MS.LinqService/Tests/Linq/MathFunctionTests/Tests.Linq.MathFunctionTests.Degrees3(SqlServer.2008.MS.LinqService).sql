BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t_1].[Value_1]
FROM
	(
		SELECT
			Degrees(CAST(Floor([t].[MoneyValue]) AS Int)) as [Value_1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	CAST([t_1].[Value_1] AS Float) <> 0.10000000000000001

