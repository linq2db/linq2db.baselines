-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '2023456.789 Second')) - julianday([t].[DateTimeValue])) * 86400000)
FROM
	[LinqDataTypes] [t]

