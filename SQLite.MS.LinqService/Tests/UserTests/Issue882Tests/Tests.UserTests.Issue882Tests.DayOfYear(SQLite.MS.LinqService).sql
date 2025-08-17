BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%j', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

