﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toSecond(addSeconds(t.TransactionDate, -35))
FROM
	Transactions t

