BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addQuarters(t.DateTimeValue, toInt32(-1))
FROM
	LinqDataTypes t

