-- ClickHouse.Octonica ClickHouse

SELECT
	toDate32(addYears(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

