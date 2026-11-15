-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN ABS([p].[MoneyValue] * 10 MOD 10) = 5 AND [p].[MoneyValue] MOD 2 = 2
					THEN [p].[MoneyValue]
				ELSE ROUND([p].[MoneyValue])
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

