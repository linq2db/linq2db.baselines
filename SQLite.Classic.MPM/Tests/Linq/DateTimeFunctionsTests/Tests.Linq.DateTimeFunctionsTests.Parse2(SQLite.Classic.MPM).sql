-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y', [d].[DateTimeValue]) || '-02-24 00:00:00')
FROM
	[LinqDataTypes] [d]
WHERE
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y', [d].[DateTimeValue]) || '-02-24 00:00:00')) AS INTEGER) > 0

