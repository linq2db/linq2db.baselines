﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

