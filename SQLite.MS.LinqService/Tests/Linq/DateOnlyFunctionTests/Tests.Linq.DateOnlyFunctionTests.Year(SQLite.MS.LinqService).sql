BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%Y', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

