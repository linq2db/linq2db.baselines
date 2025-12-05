-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%W', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

