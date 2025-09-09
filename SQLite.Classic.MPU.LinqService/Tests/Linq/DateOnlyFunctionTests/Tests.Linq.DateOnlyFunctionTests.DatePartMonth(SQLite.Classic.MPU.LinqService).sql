BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%m', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

