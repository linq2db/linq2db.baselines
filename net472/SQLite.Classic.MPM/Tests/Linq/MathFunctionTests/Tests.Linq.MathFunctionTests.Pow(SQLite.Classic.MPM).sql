BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Floor(Power(Cast([p].[MoneyValue] as Float), 3))
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Power(Cast([p].[MoneyValue] as Float), 3)) <> 0 OR Floor(Power(Cast([p].[MoneyValue] as Float), 3)) IS NULL)

