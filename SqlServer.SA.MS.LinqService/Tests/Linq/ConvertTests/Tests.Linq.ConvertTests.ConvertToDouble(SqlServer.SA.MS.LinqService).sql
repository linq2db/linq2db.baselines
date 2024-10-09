BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	CAST(Floor([p_1].[c1]) AS Int)
FROM
	(
		SELECT
			CAST([p].[MoneyValue] AS Float) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

