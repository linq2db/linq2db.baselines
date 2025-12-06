-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%H', [t].[DateTimeValue]) AS INTEGER)
FROM
	[LinqDataTypes] [t]

