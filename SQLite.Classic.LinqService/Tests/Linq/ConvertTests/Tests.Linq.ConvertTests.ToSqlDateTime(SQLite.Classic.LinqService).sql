BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) || '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

