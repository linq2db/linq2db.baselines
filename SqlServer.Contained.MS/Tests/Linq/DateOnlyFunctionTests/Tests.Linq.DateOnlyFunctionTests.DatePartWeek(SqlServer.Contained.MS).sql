﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

