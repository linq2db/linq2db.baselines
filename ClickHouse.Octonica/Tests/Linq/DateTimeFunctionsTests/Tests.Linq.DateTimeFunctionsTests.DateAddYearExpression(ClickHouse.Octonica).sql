﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	toDate32(addYears(t.DateTimeValue, 11))
FROM
	LinqDataTypes t

