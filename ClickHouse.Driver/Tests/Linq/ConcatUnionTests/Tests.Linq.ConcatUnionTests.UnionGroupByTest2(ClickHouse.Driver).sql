-- ClickHouse.Driver ClickHouse

SELECT
	t1.SmallIntValue as month_1,
	t1.SmallIntValue as year_1,
	toInt32(3) as int_1
FROM
	LinqDataTypes t1
UNION DISTINCT
SELECT
	t3.month_1 as month_1,
	t3.year_1 as year_1,
	toInt32(1) as int_1
FROM
	(
		SELECT DISTINCT
			toMonth(t2.DateTimeValue) as month_1,
			toYear(t2.DateTimeValue) as year_1
		FROM
			LinqDataTypes t2
	) t3
UNION DISTINCT
SELECT
	toYear(t4.DateTimeValue) as month_1,
	toYear(t4.DateTimeValue) as year_1,
	toInt32(2) as int_1
FROM
	LinqDataTypes t4

