BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

