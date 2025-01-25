BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST(Floor([p].[MoneyValue]) AS BigInt) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

