﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	addSeconds(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

