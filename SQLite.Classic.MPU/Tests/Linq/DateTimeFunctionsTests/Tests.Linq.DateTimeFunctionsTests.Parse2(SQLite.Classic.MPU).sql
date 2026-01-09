-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CAST(CAST(strftime('%Y', [d].[DateTimeValue]) AS INTEGER) AS NVarChar(11)) || '-02-24 00:00:00')
FROM
	[LinqDataTypes] [d]
WHERE
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', CAST(CAST(strftime('%Y', [d].[DateTimeValue]) AS INTEGER) AS NVarChar(11)) || '-02-24 00:00:00')) AS INTEGER) > 0

