-- SQLite.Classic SQLite
SELECT
	CAST(CAST(CAST(ROUND((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '2023456.789 Second')) - julianday([t].[DateTimeValue])) * 86400000) AS INTEGER) * 10000 AS INTEGER) AS Float) / 10000
FROM
	[LinqDataTypes] [t]

