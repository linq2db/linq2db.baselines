﻿BeforeExecute
-- SqlServer.2016
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart(minute, DateAdd(minute, @Value, [t].[TransactionDate]))
FROM
	[Transactions] [t]

