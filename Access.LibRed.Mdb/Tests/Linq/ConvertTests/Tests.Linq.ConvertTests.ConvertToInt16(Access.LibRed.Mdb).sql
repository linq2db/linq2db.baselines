-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[c1]
FROM
	(
		SELECT
			CASE
				WHEN ABS(([t].[MoneyValue] * 10) MOD 10) = 5 AND [t].[MoneyValue] MOD 2 = 2
					THEN [t].[MoneyValue]
				ELSE ROUND([t].[MoneyValue])
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

