-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y', [t].[DateTimeValue]) || '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

