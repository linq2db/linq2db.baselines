BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	DAY(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

