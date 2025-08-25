BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%j', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

