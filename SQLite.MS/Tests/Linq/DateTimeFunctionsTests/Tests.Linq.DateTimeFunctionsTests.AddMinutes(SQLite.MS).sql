-- SQLite.MS SQLite

SELECT
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '-8 Minute')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

