BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toMinute(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

