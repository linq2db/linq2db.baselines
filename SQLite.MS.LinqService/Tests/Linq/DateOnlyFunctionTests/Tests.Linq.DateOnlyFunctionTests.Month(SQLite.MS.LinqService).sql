BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%m', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

