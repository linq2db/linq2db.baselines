﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart(day, [d].[TransactionDate]) > 0

