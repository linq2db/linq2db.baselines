BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(CAST([p].[MoneyValue] AS Float) AS INTEGER) > 0

