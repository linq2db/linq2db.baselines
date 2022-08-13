BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	HOUR(addHours(t.DateTimeValue, toInt32(1)))
FROM
	LinqDataTypes t

