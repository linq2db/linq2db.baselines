-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[TransactionDate], '1 Day')
FROM
	[Transactions] [t]

