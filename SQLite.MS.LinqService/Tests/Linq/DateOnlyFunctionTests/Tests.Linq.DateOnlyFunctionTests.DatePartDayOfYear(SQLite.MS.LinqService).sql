﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	CAST(strftime('%j', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

