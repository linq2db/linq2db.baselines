﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[TransactionDate]))
FROM
	[Transactions] [t]

