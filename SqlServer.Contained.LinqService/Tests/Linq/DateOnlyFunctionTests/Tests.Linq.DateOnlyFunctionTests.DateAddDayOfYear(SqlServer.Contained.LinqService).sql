﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

