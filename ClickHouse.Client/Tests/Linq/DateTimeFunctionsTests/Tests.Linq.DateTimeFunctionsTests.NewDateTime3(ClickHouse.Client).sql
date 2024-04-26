BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toYear(t.DateTimeValue)
FROM
	LinqDataTypes t
WHERE
	toMonth(makeDateTime(toYear(t.DateTimeValue), 10, 1, 20, 35, 44)) = 10

