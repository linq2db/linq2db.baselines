﻿BeforeExecute
--  SqlServer.2016

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

