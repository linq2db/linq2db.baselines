BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Round(Cast([p].[MoneyValue] as Float), 0)
FROM
	[LinqDataTypes] [p]
WHERE
	(Round(Cast([p].[MoneyValue] as Float), 0) <> 0 OR Round(Cast([p].[MoneyValue] as Float), 0) IS NULL)

