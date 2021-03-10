BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Floor(Log(Cast([p].[MoneyValue] as Float)) / 0.69314718055994529)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Log(Cast([p].[MoneyValue] as Float)) / 0.69314718055994529) <> 0.10000000000000001 OR Floor(Log(Cast([p].[MoneyValue] as Float)) / 0.69314718055994529) IS NULL)

