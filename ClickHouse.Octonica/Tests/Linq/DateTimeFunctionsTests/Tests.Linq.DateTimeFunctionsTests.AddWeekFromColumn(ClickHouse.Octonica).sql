-- ClickHouse.Octonica ClickHouse

SELECT
	toDate32(addWeeks(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

