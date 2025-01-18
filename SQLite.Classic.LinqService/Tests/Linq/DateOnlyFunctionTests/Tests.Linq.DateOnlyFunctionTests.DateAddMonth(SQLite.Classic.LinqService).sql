BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[TransactionDate], '2 Month')
FROM
	[Transactions] [t]

