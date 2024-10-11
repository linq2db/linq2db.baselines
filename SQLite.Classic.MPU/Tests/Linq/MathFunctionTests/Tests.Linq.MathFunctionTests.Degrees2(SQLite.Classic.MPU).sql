BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Floor(Degrees(CAST([t].[MoneyValue] AS Float)))
FROM
	[LinqDataTypes] [t]
WHERE
	Degrees(CAST([t].[MoneyValue] AS Float)) <> 0.10000000000000001

