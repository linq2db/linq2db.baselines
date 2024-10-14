BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST(Floor([p].[c1]) AS Int)
FROM
	(
		SELECT
			CAST([t].[MoneyValue] AS Float) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

