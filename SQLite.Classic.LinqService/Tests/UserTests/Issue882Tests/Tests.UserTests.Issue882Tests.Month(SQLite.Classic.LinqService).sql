BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%m', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

