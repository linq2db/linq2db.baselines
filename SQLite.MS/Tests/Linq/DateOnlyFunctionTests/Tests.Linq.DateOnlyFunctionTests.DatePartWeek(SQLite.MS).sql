BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST(strftime('%W', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

