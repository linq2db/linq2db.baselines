﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

