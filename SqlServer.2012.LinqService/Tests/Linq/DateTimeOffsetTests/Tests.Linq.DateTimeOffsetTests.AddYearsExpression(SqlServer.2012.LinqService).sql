﻿BeforeExecute
-- SqlServer.2012
DECLARE @Date Int -- Int32
SET     @Date = 1

SELECT
	CAST(DateAdd(year, @Date, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

