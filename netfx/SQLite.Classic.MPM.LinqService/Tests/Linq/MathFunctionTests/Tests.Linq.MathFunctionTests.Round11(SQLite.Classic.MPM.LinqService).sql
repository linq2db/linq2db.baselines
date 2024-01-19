BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Cast([t].[MoneyValue] as Float) * 2 = Round(Cast([t].[MoneyValue] as Float) * 2, 1) AND Cast([t].[MoneyValue] as Float) <> Round(Cast([t].[MoneyValue] as Float), 1)
					THEN Round(Cast([t].[MoneyValue] as Float) / 2, 1) * 2
				ELSE Round(Cast([t].[MoneyValue] as Float), 1)
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0 OR [t_1].[c1] IS NULL)

