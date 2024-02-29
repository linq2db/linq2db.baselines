BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addDays(t.DateTimeValue, toInt32(1))
FROM
	LinqDataTypes t

