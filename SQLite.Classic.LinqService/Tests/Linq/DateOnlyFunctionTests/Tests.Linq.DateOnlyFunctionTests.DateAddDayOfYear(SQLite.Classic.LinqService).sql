﻿BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[TransactionDate], '3 Day')
FROM
	[Transactions] [t]

