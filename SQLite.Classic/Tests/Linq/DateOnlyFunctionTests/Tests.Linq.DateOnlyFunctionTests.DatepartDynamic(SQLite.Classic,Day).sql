-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%d', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

