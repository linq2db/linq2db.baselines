﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[TransactionDate], '-7 Day')
FROM
	[Transactions] [t]

