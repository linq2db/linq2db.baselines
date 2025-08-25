BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CAST(strftime('%Y', [d].[DateTimeValue]) AS INTEGER) || '-02-24 00:00:00')
FROM
	[LinqDataTypes] [d]
WHERE
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', CAST(strftime('%Y', [d].[DateTimeValue]) AS INTEGER) || '-02-24 00:00:00')) AS INTEGER) > 0

