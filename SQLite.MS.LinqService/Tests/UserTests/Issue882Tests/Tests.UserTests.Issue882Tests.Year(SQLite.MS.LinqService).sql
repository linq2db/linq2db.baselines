BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

