﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DateAdd(weekday, 1, [t].[TransactionDate])
FROM
	[Transactions] [t]

