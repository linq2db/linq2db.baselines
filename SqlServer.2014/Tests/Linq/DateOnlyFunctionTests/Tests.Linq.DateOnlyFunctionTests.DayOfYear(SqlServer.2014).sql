﻿BeforeExecute
--  SqlServer.2014

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

