﻿BeforeExecute
--  SqlServer.2022

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

