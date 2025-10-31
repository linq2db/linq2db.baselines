-- SQLite.MS SQLite

SELECT
	(CAST(strftime('%m', [t].[DateTimeValue]) AS INTEGER) - 1) / 3 + 1
FROM
	[LinqDataTypes] [t]

