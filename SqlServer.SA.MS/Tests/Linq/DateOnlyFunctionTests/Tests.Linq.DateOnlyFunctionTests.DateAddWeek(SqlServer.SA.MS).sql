﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

