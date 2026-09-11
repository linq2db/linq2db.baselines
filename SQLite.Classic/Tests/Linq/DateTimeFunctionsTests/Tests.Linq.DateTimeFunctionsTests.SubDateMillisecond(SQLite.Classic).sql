-- SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '2023456.789 Second')) - JulianDay([t].[DateTimeValue])) * 86400000) AS INTEGER) * 10000 AS Float) / 10000
FROM
	[LinqDataTypes] [t]

