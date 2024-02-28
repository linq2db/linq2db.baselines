BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			toInt32(0) as c1
		FROM
			(
				SELECT
					MONTH(selectParam.DateTimeValue) as Key_1,
					YEAR(selectParam.DateTimeValue) as Key_2
				FROM
					LinqDataTypes selectParam
			) t1
		GROUP BY
			t1.Key_1,
			t1.Key_2
	) t2

