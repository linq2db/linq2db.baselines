-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(CAST([p].[MoneyValue] AS FloatDouble) AS INTEGER) > 0

