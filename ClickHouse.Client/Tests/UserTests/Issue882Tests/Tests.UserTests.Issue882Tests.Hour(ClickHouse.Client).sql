BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toHour(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

