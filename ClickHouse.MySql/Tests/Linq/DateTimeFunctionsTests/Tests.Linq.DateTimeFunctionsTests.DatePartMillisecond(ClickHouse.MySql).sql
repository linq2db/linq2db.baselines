﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	toUnixTimestamp64Milli(t.DateTimeValue) % 1000
FROM
	LinqDataTypes t

