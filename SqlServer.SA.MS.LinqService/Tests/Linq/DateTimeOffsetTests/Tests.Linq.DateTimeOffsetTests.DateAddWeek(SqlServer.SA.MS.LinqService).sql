﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

SELECT
	CAST(DateAdd(week, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

