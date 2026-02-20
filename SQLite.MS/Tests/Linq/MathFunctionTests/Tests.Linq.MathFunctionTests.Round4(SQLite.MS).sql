-- SQLite.MS SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST([p].[MoneyValue] AS FloatDouble) * 2 = ROUND(CAST([p].[MoneyValue] AS FloatDouble) * 2, 1) AND CAST([p].[MoneyValue] AS FloatDouble) <> ROUND(CAST([p].[MoneyValue] AS FloatDouble), 1)
					THEN ROUND(CAST([p].[MoneyValue] AS FloatDouble) / 2, 1) * 2
				ELSE ROUND(CAST([p].[MoneyValue] AS FloatDouble), 1)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

