BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addWeeks(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

