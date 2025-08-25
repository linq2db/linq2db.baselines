BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%d', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

