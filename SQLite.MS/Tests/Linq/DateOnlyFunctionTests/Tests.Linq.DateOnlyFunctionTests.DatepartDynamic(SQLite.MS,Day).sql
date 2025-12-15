-- SQLite.MS SQLite

SELECT
	CAST(strftime('%d', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

