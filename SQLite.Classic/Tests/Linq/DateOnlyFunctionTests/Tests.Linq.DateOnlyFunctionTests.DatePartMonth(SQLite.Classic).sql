﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%m', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

