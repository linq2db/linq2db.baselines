BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(addYears(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

