BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CAST(Floor(CAST([t].[MoneyValue] AS Float)) AS Int) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

