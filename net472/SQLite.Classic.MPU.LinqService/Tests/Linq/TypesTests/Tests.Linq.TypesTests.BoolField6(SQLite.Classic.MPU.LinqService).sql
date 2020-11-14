BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[MoneyValue]
FROM
	(
		SELECT
			CASE
				WHEN [t].[BoolValue] = 0 THEN 1
				ELSE 0
			END as [b],
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[b] = 1

