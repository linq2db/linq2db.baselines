-- ClickHouse.Octonica ClickHouse

SELECT
	addHours(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

