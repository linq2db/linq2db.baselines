-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CAST(CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) AS NVarChar(11)) || '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

