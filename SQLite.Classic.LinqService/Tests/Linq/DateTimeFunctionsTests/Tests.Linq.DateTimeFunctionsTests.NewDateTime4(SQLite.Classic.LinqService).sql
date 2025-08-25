BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [p].[DateTimeValue]) AS INTEGER)) || '-10-01 20:35:44.000')
FROM
	[LinqDataTypes] [p]

