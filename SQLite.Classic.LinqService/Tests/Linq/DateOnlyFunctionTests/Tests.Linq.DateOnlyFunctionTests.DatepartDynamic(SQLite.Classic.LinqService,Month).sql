BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%m', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

