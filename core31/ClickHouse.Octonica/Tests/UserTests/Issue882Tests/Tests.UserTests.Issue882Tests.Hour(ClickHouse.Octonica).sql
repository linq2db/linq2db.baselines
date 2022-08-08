BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	HOUR(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

