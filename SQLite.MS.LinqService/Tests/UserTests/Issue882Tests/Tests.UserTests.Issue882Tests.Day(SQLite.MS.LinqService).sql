BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%d', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

