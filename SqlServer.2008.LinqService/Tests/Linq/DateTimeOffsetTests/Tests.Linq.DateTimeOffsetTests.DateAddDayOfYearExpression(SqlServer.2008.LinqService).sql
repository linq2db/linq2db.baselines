﻿BeforeExecute
--  SqlServer.2008
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	CAST(DateAdd(dayofyear, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

