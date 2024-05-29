BeforeExecute
-- SqlCe

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Floor([p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

