BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST(Floor([p].[MoneyValue]) AS SmallInt) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

