﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(addDays(t.DateTimeValue, 3))
FROM
	LinqDataTypes t

