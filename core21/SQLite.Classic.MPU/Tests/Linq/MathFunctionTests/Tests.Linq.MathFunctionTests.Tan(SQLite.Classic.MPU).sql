BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Floor(Tan(Cast([p].[MoneyValue] as Float) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Tan(Cast([p].[MoneyValue] as Float) / 15) * 15) <> 0.10000000000000001 OR Floor(Tan(Cast([p].[MoneyValue] as Float) / 15) * 15) IS NULL)

