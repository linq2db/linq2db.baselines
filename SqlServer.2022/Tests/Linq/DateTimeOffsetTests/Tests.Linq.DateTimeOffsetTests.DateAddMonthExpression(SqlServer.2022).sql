﻿BeforeExecute
-- SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	CAST(DateAdd(month, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

