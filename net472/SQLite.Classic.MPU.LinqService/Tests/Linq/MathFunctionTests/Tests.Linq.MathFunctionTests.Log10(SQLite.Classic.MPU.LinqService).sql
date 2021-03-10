BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Floor(Log10(Cast([p].[MoneyValue] as Float)))
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Log10(Cast([p].[MoneyValue] as Float))) <> 0.10000000000000001 OR Floor(Log10(Cast([p].[MoneyValue] as Float))) IS NULL)

