﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate32(addYears(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

