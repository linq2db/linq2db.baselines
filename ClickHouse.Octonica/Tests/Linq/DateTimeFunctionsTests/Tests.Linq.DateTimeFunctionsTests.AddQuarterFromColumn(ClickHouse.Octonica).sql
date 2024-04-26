BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addQuarters(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

