-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y', [p].[DateTimeValue]) || '-01-01 00:00:00')
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y', [p].[DateTimeValue]) || '-01-01 00:00:00')) AS INTEGER) > 0

