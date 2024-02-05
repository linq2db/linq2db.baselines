BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addDays(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

