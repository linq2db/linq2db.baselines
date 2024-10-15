BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CAST(Floor([t].[MoneyValue]) AS Int) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

