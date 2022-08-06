BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.month_1,
	t1.year_1
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

