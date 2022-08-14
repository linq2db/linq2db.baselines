BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toInt32(_.SmallIntValue),
	toInt32(_.SmallIntValue),
	toInt32(3)
FROM
	LinqDataTypes _
UNION DISTINCT
SELECT
	t2.month_1,
	t2.year_1,
	t2.int_1
FROM
	(
		SELECT
			t1.month_1 as month_1,
			t1.year_1 as year_1,
			toInt32(1) as int_1
		FROM
			(
				SELECT
					MONTH(selectParam.DateTimeValue) as month_1,
					YEAR(selectParam.DateTimeValue) as year_1
				FROM
					LinqDataTypes selectParam
			) t1
		GROUP BY
			t1.month_1,
			t1.year_1
	) t2
UNION DISTINCT
SELECT
	YEAR(_1.DateTimeValue),
	YEAR(_1.DateTimeValue),
	toInt32(2)
FROM
	LinqDataTypes _1

