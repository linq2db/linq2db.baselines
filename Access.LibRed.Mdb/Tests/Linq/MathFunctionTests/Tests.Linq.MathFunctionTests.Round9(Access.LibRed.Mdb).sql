-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[c1]
FROM
	(
		SELECT
			Int([p].[MoneyValue] * 10 ^ 1 + CASE
				WHEN [p].[MoneyValue] >= 0 THEN 0.5
				ELSE -0.5
			END) / 10 ^ 1 as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

