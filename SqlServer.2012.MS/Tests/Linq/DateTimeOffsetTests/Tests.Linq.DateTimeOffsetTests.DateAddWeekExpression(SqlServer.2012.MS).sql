﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(DateAdd(week, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

