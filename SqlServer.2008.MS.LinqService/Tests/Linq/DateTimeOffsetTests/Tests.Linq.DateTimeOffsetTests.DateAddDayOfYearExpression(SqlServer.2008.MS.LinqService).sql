﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	CAST(DateAdd(dayofyear, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

