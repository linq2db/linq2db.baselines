BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%S', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

