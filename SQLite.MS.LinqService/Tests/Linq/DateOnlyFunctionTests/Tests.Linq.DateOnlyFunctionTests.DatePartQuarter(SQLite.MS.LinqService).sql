﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	(CAST(strftime('%m', [t].[TransactionDate]) AS INTEGER) - 1) / 3 + 1
FROM
	[Transactions] [t]

