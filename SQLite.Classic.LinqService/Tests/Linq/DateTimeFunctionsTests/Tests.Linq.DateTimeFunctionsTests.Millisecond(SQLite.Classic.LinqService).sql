BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%f', [t].[DateTimeValue]) * 1000 AS INTEGER) % 1000
FROM
	[LinqDataTypes] [t]

