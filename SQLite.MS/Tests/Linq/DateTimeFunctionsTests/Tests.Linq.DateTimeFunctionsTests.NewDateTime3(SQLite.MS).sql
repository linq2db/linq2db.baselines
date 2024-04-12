BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER)
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(strftime('%m', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER)) || '-10-01 20:35:44.000')) AS INTEGER) = 10

