BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%H', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

