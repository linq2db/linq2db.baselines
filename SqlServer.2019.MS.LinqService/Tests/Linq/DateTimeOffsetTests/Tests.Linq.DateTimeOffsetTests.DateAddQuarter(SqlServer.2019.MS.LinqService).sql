﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	CAST(DateAdd(quarter, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

