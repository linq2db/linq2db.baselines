BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	makeDateTime(toYear(t.DateTimeValue) + 1, 10, 1, 0, 0, 0)
FROM
	LinqDataTypes t
WHERE
	toMonth(makeDateTime(toYear(t.DateTimeValue) + 1, 10, 1, 0, 0, 0)) = 10

