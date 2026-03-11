-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CAST(strftime('%w', [t].[TransactionDate]) AS INTEGER) + 1
FROM
	[Transactions] [t]

