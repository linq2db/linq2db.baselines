BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Cast([p].[MoneyValue] as Float) - Floor(Cast([p].[MoneyValue] as Float)) = 0.5 AND Floor(Cast([p].[MoneyValue] as Float)) % 2 = 0
					THEN Floor(Cast([p].[MoneyValue] as Float))
				ELSE Round(Cast([p].[MoneyValue] as Float), 0)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

