BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Floor(Atan2(Cast([p].[MoneyValue] as Float) / 15, 0) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Atan2(Cast([p].[MoneyValue] as Float) / 15, 0) * 15) <> 0.10000000000000001 OR Floor(Atan2(Cast([p].[MoneyValue] as Float) / 15, 0) * 15) IS NULL)

