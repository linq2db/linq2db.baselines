﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

