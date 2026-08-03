-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(CAST(ROUND((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Hour')) - julianday([t].[DateTimeValue])) * 86400000) AS INTEGER) * 10000 AS INTEGER) AS Float) / 36000000000
FROM
	[LinqDataTypes] [t]

