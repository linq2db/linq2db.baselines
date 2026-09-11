-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Hour')) - JulianDay([t].[DateTimeValue])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000
FROM
	[LinqDataTypes] [t]

