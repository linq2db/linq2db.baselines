BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Floor(Cos(Cast([p].[MoneyValue] as Float) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Cos(Cast([p].[MoneyValue] as Float) / 15) * 15) <> 0.10000000000000001 OR Floor(Cos(Cast([p].[MoneyValue] as Float) / 15) * 15) IS NULL)

