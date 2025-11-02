-- SQLite.Classic SQLite

SELECT
	(CAST(strftime('%f', [t].[DateTimeValue]) * 1000 AS INTEGER) % 1000) % 7
FROM
	[LinqDataTypes] [t]

