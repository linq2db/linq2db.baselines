BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%W', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

