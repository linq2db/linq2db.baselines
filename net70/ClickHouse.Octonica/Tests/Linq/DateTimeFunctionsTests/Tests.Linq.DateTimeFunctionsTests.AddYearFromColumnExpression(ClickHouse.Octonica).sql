BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addYears(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

