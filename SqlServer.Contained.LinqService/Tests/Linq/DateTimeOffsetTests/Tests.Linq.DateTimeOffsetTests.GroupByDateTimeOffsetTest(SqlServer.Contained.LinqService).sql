﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[TransactionDate],
	COUNT(*)
FROM
	[Transactions] [x]
GROUP BY
	[x].[TransactionDate]
ORDER BY
	[x].[TransactionDate]

