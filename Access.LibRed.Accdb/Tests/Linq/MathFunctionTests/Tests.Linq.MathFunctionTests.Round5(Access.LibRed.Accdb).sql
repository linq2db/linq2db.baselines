-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [p].[MoneyValue] >= 0 THEN Int([p].[MoneyValue] + 0.5)
				ELSE Int([p].[MoneyValue] - 0.5)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

