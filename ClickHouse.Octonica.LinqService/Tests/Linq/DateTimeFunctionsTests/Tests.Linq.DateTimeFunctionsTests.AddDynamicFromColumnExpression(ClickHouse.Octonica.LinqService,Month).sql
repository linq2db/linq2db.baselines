BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addMonths(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

