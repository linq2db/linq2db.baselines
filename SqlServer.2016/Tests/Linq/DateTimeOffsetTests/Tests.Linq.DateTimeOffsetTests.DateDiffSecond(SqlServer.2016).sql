﻿BeforeExecute
-- SqlServer.2016

SELECT
	DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

