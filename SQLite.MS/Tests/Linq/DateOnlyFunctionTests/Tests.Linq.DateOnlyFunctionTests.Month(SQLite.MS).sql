﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	CAST(strftime('%m', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

