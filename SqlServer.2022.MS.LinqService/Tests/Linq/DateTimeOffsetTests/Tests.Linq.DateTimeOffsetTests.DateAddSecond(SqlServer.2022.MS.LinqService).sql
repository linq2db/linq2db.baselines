﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

