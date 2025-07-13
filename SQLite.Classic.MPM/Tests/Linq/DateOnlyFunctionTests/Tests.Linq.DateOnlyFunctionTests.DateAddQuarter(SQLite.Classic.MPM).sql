BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[TransactionDate], '-3 Month')
FROM
	[Transactions] [t]

