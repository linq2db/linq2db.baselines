﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	CAST(DateAdd(weekday, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

