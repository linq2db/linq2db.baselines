-- ClickHouse.Octonica ClickHouse

SELECT
	addDays(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

