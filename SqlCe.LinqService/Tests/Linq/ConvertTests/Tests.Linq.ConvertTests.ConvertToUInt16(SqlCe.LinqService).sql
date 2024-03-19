BeforeExecute
-- SqlCe

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Convert(Int, CASE
				WHEN [p].[MoneyValue] - Floor([p].[MoneyValue]) = 0.5 AND Convert(Int, Floor([p].[MoneyValue])) % 2 = 0
					THEN Floor([p].[MoneyValue])
				ELSE Round([p].[MoneyValue], 0)
			END) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

