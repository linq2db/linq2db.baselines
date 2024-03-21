BeforeExecute
-- SqlCe

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Convert(SmallInt, [p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

