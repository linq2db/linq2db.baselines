﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	CAST(DateAdd(weekday, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

