-- SQLite.MS SQLite

SELECT
	CAST(strftime('%M', [t].[DateTimeValue]) AS INTEGER)
FROM
	[LinqDataTypes] [t]

