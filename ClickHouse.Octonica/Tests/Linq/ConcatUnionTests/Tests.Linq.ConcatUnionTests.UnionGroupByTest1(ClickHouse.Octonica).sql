BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Month_1 as month_1,
	t1.Year_1 as year_1,
	1 as int_1
FROM
	(
		SELECT
			toMonth(_.DateTimeValue) as Month_1,
			toYear(_.DateTimeValue) as Year_1
		FROM
			LinqDataTypes _
	) t1
GROUP BY
	t1.Month_1,
	t1.Year_1
UNION DISTINCT
SELECT
	toInt32(_1.SmallIntValue) as month_1,
	toInt32(_1.SmallIntValue) as year_1,
	3 as int_1
FROM
	LinqDataTypes _1
UNION DISTINCT
SELECT
	toYear(_2.DateTimeValue) as month_1,
	toYear(_2.DateTimeValue) as year_1,
	2 as int_1
FROM
	LinqDataTypes _2

