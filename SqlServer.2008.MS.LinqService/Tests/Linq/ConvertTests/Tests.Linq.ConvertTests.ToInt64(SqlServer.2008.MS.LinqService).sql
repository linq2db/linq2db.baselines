BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CAST(Floor([t].[MoneyValue]) AS BigInt) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

