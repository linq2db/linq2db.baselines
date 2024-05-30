BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST(strftime('%S', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

