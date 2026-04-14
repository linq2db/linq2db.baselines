-- SQLite.MS SQLite

SELECT
	[x].[TransactionId],
	strftime('%Y-%m-%d %H:%M:%f', [x].[TransactionDate])
FROM
	[DateTimeOffsetTable] [x]
ORDER BY
	strftime('%Y-%m-%d %H:%M:%f', [x].[TransactionDate])

