BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addMonths(t.DateTimeValue, -2))
FROM
	LinqDataTypes t

