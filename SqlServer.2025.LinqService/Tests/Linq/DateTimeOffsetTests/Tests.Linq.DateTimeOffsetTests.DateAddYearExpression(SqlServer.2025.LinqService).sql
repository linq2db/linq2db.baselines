﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	CAST(DateAdd(year, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

