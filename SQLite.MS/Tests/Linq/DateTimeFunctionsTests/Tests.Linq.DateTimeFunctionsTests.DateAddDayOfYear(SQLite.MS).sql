-- SQLite.MS SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '3 Day'))
FROM
	[LinqDataTypes] [t]

