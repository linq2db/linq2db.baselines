﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	toDate32(addWeeks(t.TransactionDate, -1))
FROM
	Transactions t

