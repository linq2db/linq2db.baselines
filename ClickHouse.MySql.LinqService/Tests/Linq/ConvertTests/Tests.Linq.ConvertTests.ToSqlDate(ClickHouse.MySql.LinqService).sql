BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(concat(toString(toYear(t.DateTimeValue)), '-01-01'))
FROM
	LinqDataTypes t

