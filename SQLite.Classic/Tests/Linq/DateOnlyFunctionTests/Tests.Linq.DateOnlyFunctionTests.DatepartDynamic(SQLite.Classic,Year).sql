BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%Y', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

