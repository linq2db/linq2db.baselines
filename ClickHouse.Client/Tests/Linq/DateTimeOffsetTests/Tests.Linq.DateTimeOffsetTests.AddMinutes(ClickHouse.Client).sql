﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	toMinute(addMinutes(t.TransactionDate, toFloat64(-8)))
FROM
	Transactions t

