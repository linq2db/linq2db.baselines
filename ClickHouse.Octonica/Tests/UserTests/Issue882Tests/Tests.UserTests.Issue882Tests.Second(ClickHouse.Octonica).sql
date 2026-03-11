-- ClickHouse.Octonica ClickHouse

SELECT
	toSecond(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

