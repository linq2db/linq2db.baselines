BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Cast([p].[MoneyValue] as Float) * 2 = Round(Cast([p].[MoneyValue] as Float) * 2, 1) AND Cast([p].[MoneyValue] as Float) <> Round(Cast([p].[MoneyValue] as Float), 1)
					THEN Round(Cast([p].[MoneyValue] as Float) / 2, 1) * 2
				ELSE Round(Cast([p].[MoneyValue] as Float), 1)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

