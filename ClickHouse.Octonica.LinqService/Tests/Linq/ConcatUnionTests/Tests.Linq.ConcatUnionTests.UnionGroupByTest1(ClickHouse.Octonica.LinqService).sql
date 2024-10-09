BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.Month_1 as month_1,
	t2.Year_1 as year_1,
	toInt32(1) as int_1
FROM
	(
		SELECT
			toMonth(t1.DateTimeValue) as Month_1,
			toYear(t1.DateTimeValue) as Year_1
		FROM
			LinqDataTypes t1
	) t2
GROUP BY
	t2.Month_1,
	t2.Year_1
UNION DISTINCT
SELECT
	toInt32(t3.SmallIntValue) as month_1,
	toInt32(t3.SmallIntValue) as year_1,
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

