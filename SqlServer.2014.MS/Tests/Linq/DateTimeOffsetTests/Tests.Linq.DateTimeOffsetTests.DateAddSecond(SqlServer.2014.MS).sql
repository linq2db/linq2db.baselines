﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

