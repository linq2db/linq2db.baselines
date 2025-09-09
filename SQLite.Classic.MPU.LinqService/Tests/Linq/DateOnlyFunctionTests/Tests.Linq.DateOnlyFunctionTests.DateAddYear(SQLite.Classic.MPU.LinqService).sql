BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[TransactionDate], '12 Year')
FROM
	[Transactions] [t]

