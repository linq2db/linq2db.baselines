﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toDate32(addWeeks(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

