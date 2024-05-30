BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addMinutes(t.DateTimeValue, (toInt32(t.SmallIntValue) + toInt16(4)) - 4)
FROM
	LinqDataTypes t

