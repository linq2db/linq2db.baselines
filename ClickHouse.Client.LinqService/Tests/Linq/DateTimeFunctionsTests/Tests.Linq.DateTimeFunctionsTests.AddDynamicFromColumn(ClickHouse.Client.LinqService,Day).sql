﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	addDays(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

