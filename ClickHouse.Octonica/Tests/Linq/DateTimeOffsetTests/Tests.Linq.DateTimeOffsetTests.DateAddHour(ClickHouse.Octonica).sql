﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toHour(addHours(t.TransactionDate, 1))
FROM
	Transactions t

