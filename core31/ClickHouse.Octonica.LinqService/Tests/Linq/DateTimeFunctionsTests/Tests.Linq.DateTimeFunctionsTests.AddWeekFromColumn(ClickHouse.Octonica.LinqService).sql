BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addWeeks(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

