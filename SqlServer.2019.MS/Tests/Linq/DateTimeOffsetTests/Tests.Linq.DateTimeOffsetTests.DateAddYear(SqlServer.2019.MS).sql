﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

