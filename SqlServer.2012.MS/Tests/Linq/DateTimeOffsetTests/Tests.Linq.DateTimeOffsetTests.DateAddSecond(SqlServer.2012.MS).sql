﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

