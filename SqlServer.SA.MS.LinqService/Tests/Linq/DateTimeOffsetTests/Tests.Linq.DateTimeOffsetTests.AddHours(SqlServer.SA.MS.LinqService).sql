﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[TransactionDate]))
FROM
	[Transactions] [t]

