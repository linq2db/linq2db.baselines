﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

