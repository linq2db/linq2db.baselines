﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			DatePart(hour, [x].[TransactionDate]) as [Key_1]
		FROM
			[Transactions] [x]
	) [t1]
GROUP BY
	[t1].[Key_1]
ORDER BY
	[t1].[Key_1]

