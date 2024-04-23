BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.month_1,
	t1.month_1 as year_1,
	t1.int_1
FROM
	(
		SELECT
			toInt32(_.SmallIntValue) as month_1,
			3 as int_1
		FROM
			LinqDataTypes _
	) t1
UNION DISTINCT
SELECT
	t2.Month_1 as month_1,
	t2.Year_1 as year_1,
	1 as int_1
FROM
	(
		SELECT
			toMonth(_1.DateTimeValue) as Month_1,
			toYear(_1.DateTimeValue) as Year_1
		FROM
			LinqDataTypes _1
	) t2
GROUP BY
	t2.Month_1,
	t2.Year_1
UNION DISTINCT
SELECT
	toYear(_2.DateTimeValue) as month_1,
	toYear(_2.DateTimeValue) as year_1,
	2 as int_1
FROM
	LinqDataTypes _2

