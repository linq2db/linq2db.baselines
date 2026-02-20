-- SQLite.Classic SQLite

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST([p].[MoneyValue] AS DecimalUInt64) > 0

