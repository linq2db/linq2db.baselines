BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Degrees(Cast([p].[MoneyValue] as Float))
FROM
	[LinqDataTypes] [p]
WHERE
	(Degrees(Cast([p].[MoneyValue] as Float)) <> 0.10000000000000001 OR Degrees(Cast([p].[MoneyValue] as Float)) IS NULL)

