BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toYear(t.DateTimeValue)
FROM
	LinqDataTypes t
WHERE
	toMonth(makeDateTime(toYear(t.DateTimeValue), 10, 1, 0, 0, 0)) = 10

