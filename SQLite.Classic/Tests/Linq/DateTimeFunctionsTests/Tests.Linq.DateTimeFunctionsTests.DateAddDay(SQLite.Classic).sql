-- SQLite.Classic SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '5 Day'))
FROM
	[LinqDataTypes] [t]

