﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

