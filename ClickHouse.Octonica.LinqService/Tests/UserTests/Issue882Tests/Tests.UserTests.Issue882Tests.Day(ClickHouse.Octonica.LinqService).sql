BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDayOfMonth(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

