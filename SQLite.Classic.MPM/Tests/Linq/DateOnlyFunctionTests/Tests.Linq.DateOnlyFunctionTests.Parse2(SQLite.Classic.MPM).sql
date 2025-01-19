BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	CAST(strftime('%d', [d].[TransactionDate]) AS INTEGER) > 0

