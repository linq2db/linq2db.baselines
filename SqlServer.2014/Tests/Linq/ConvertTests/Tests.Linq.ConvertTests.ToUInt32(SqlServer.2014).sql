BeforeExecute
-- SqlServer.2014

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Convert(BigInt, [p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

