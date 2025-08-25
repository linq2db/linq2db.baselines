BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CAST(strftime('%w', [t].[TransactionDate]) AS INTEGER) + 1
FROM
	[Transactions] [t]

