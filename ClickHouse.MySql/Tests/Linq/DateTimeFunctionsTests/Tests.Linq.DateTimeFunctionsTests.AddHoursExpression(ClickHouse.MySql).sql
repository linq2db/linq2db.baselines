﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	toHour(addHours(t.DateTimeValue, 22))
FROM
	LinqDataTypes t

