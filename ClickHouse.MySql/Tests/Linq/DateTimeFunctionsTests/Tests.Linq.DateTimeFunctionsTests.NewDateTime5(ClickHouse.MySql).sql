BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toYear(t.DateTimeValue) + 1
FROM
	LinqDataTypes t
WHERE
	toMonth(makeDateTime(toYear(t.DateTimeValue) + 1, 10, 1, 0, 0, 0)) = 10

