﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toSecond(addSeconds(t.DateTimeValue, -35))
FROM
	LinqDataTypes t

