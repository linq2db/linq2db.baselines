﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	DatePart(second, DateAdd(second, -35, [t].[TransactionDate]))
FROM
	[Transactions] [t]

