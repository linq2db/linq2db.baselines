-- ClickHouse.Octonica ClickHouse

SELECT
	toDayOfYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

