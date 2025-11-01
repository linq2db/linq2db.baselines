-- SQLite.MS SQLite

SELECT
	CAST(strftime('%Y', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

