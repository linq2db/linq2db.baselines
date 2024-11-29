BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addMinutes(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

