﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

