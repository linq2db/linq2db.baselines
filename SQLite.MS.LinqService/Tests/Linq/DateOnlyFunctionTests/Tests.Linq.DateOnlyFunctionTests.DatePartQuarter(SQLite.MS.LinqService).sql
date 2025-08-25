BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	(CAST(strftime('%m', [t].[TransactionDate]) AS INTEGER) - 1) / 3 + 1
FROM
	[Transactions] [t]

