-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST([p].[MoneyValue] AS FloatDouble) - FLOOR(CAST([p].[MoneyValue] AS FloatDouble)) = 0.5 AND (FLOOR(CAST([p].[MoneyValue] AS FloatDouble)) % 2) = 0
					THEN FLOOR(CAST([p].[MoneyValue] AS FloatDouble))
				ELSE ROUND(CAST([p].[MoneyValue] AS FloatDouble), 0)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

