BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Floor(Asin(Cast([p].[MoneyValue] as Float) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Asin(Cast([p].[MoneyValue] as Float) / 15) * 15) <> 0.10000000000000001 OR Floor(Asin(Cast([p].[MoneyValue] as Float) / 15) * 15) IS NULL)

