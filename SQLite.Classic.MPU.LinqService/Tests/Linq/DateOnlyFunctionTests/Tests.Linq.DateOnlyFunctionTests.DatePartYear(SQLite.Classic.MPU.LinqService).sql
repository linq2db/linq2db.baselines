BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%Y', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

