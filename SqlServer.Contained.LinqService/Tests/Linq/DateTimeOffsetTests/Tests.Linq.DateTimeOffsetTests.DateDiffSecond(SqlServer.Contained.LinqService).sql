﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	DateDiff_Big(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

