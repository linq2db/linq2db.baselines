BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addQuarters(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

