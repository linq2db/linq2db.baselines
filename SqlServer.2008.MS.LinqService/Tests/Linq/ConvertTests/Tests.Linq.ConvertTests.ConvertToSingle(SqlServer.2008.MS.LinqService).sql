BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(Floor([p_1].[c1]) AS Int)
FROM
	(
		SELECT
			CAST([p].[MoneyValue] AS Real) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

