BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	CAST(strftime('%d', [d].[TransactionDate]) AS INTEGER) > 0

