﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateDiff_Big(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

