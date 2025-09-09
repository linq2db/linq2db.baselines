BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) + 1) || '-10-01 00:00:00.000')
FROM
	[LinqDataTypes] [t]

