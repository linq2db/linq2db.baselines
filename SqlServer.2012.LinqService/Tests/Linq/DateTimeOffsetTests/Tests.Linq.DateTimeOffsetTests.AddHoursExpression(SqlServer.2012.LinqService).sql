﻿BeforeExecute
--  SqlServer.2012
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	DatePart(hour, DateAdd(hour, @Hour, [t].[TransactionDate]))
FROM
	[Transactions] [t]

