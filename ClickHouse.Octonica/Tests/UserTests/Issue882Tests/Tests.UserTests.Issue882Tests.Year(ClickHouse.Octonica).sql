-- ClickHouse.Octonica ClickHouse

SELECT
	toYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

