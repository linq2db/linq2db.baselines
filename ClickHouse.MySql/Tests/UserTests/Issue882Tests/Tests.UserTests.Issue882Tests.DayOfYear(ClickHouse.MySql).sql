﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	toDayOfYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

