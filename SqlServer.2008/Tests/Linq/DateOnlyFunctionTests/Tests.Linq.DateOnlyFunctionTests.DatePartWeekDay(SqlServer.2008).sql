﻿BeforeExecute
--  SqlServer.2008

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

