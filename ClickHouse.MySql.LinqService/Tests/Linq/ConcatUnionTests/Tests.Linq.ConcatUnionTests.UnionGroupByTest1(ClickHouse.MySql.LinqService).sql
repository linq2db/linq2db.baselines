BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t2.month_1,
	t2.year_1,
	toInt32(1) as int_1
FROM
	(
		SELECT
			toMonth(t1.DateTimeValue) as month_1,
			toYear(t1.DateTimeValue) as year_1
		FROM
			LinqDataTypes t1
	) t2
GROUP BY
	t2.month_1,
	t2.year_1
UNION DISTINCT
SELECT
	t3.SmallIntValue as month_1,
	t3.SmallIntValue as year_1,
	toInt32(3) as int_1
FROM
	LinqDataTypes t3
UNION DISTINCT
SELECT
	toYear(t4.DateTimeValue) as month_1,
	toYear(t4.DateTimeValue) as year_1,
	toInt32(2) as int_1
FROM
	LinqDataTypes t4

