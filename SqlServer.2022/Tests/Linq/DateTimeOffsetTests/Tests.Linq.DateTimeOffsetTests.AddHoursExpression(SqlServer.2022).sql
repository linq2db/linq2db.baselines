﻿BeforeExecute
--  SqlServer.2022
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	DatePart(hour, DateAdd(hour, @Hour, [t].[TransactionDate]))
FROM
	[Transactions] [t]

