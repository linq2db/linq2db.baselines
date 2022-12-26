BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			toInt32(0) as c1
		FROM
			LinqDataTypes selectParam
		GROUP BY
			MONTH(selectParam.DateTimeValue),
			YEAR(selectParam.DateTimeValue)
	) t1

