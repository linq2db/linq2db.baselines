﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	DAYOFWEEK(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

