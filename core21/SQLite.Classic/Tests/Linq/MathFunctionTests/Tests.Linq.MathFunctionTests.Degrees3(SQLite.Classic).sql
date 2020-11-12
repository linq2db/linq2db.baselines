BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Degrees(Cast([t].[MoneyValue] as INTEGER))
FROM
	[LinqDataTypes] [t]
WHERE
	(Cast(Degrees(Cast([t].[MoneyValue] as INTEGER)) as Float) <> 0.10000000000000001 OR Cast(Degrees(Cast([t].[MoneyValue] as INTEGER)) as Float) IS NULL)

