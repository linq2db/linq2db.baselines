﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addMonths(t.TransactionDate, 2)
FROM
	Transactions t

