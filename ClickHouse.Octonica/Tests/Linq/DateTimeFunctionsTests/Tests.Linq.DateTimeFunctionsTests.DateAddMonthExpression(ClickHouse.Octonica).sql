BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addMonths(t.DateTimeValue, toInt32(2))
FROM
	LinqDataTypes t

