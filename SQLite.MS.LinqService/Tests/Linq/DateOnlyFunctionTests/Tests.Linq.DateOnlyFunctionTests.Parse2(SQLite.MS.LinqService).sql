﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	CAST(strftime('%d', [d].[TransactionDate]) AS INTEGER) > 0

