﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	CAST(DateAdd(weekday, @Value, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

