﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

SELECT
	DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

