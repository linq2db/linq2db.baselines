﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDateTime64(concat(toString(toYear(p.DateTimeValue)), '-01-01 00:00:00'), toUInt8(7))
FROM
	LinqDataTypes p
WHERE
	toDayOfMonth(toDateTime64(concat(toString(toYear(p.DateTimeValue)), '-01-01 00:00:00'), toUInt8(7))) > 0

