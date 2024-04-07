BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	YEAR(t.DateTimeValue) % toInt32(7)
FROM
	LinqDataTypes t

