BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addMonths(t.DateTimeValue, (toInt32(t.SmallIntValue) + toInt16(4)) - 4)
FROM
	LinqDataTypes t

