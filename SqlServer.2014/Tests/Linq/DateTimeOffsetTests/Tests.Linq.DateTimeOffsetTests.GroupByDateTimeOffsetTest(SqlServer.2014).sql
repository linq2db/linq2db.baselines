﻿BeforeExecute
--  SqlServer.2014

SELECT
	[x].[TransactionDate],
	COUNT(*)
FROM
	[Transactions] [x]
GROUP BY
	[x].[TransactionDate]
ORDER BY
	[x].[TransactionDate]

