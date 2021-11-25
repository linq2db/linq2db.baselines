BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Degrees(Cast([p].[MoneyValue] as INTEGER))
FROM
	[LinqDataTypes] [p]
WHERE
	(Cast(Degrees(Cast([p].[MoneyValue] as INTEGER)) as Float) <> 0.10000000000000001 OR Cast(Degrees(Cast([p].[MoneyValue] as INTEGER)) as Float) IS NULL)

