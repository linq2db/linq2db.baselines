﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[x].[TransactionDate],
	COUNT(*)
FROM
	[Transactions] [x]
GROUP BY
	[x].[TransactionDate]
ORDER BY
	[x].[TransactionDate]

