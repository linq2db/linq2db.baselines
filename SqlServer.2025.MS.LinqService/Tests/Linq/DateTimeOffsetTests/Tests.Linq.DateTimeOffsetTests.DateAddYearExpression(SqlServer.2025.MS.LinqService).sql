﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	CAST(DateAdd(year, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

