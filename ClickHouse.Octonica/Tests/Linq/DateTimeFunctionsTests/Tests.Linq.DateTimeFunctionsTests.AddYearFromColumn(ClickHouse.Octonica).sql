BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addYears(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

