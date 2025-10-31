-- ClickHouse.Octonica ClickHouse

SELECT
	toHour(addHours(t.DateTimeValue, 22))
FROM
	LinqDataTypes t

