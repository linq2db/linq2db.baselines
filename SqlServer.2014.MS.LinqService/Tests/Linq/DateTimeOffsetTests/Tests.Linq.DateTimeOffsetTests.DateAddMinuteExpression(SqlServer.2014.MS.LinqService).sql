﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart(minute, DateAdd(minute, @Value, [t].[TransactionDate]))
FROM
	[Transactions] [t]

