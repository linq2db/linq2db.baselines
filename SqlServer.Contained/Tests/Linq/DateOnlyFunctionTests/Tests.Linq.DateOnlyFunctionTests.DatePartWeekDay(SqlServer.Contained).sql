﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

