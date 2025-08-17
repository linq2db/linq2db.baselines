BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%M', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

