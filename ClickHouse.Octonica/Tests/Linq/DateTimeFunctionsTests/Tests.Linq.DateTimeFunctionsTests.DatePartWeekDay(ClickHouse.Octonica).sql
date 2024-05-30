BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDayOfWeek(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

