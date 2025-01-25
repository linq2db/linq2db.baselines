BeforeExecute
-- SQLite.MS SQLite

SELECT
	Date('2010-01-' || printf('%02d', [t].[TransactionId]))
FROM
	[Transactions] [t]
WHERE
	CAST(strftime('%d', Date('2010-01-' || printf('%02d', [t].[TransactionId]))) AS INTEGER) > 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

