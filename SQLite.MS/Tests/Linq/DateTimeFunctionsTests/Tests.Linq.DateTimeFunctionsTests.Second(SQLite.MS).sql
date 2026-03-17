-- SQLite.MS SQLite

SELECT
	CAST(strftime('%S', [t].[DateTimeValue]) AS INTEGER)
FROM
	[LinqDataTypes] [t]

