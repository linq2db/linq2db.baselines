﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014
DECLARE @Date Int -- Int32
SET     @Date = 5

SELECT
	CAST(DateAdd(day, @Date, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

