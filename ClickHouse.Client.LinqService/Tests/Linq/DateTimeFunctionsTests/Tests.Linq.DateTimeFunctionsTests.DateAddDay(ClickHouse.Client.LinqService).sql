﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addDays(t.DateTimeValue, 5))
FROM
	LinqDataTypes t

