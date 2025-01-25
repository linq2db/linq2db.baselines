BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addWeeks(t.DateTimeValue, (toInt32(t.SmallIntValue) + toInt16(4)) - 4))
FROM
	LinqDataTypes t

