﻿BeforeExecute
--  SqlServer.2022

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart(day, [d].[TransactionDate]) > 0

