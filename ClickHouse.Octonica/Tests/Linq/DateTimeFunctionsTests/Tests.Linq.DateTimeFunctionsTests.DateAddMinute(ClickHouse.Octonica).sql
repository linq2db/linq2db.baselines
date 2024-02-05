BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addMinutes(t.DateTimeValue, toInt32(5))
FROM
	LinqDataTypes t

