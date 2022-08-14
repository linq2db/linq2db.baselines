BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addSeconds(t.DateTimeValue, toInt32(-35))
FROM
	LinqDataTypes t

