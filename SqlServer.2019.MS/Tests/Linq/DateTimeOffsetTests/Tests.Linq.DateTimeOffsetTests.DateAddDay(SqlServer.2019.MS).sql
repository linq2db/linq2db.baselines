﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	CAST(DateAdd(day, 5, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

