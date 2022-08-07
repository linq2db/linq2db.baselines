BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	SECOND(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

