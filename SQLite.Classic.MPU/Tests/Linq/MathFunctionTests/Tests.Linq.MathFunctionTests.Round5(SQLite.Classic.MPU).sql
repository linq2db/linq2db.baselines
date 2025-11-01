-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue]) <> 0

