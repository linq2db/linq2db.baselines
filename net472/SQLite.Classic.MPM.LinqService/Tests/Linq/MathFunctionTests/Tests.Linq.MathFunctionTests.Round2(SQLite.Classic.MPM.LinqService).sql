BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Cast([t].[MoneyValue] as Float) - Floor(Cast([t].[MoneyValue] as Float)) = 0.5 AND Floor(Cast([t].[MoneyValue] as Float)) % 2 = 0
					THEN Floor(Cast([t].[MoneyValue] as Float))
				ELSE Round(Cast([t].[MoneyValue] as Float), 0)
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0 OR [t_1].[c1] IS NULL)

