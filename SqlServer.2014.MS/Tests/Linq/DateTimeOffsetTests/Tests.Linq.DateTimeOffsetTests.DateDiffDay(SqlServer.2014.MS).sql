﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT
	DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

