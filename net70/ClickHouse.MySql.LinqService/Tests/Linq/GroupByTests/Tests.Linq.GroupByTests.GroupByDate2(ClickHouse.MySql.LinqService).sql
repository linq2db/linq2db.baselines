BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	sumOrNull(t1.MoneyValue),
	t1.Key_2,
	t1.Key_1
FROM
	(
		SELECT
			MONTH(selectParam.DateTimeValue) as Key_1,
			YEAR(selectParam.DateTimeValue) as Key_2,
			selectParam.MoneyValue as MoneyValue
		FROM
			LinqDataTypes selectParam
	) t1
GROUP BY
	t1.Key_1,
	t1.Key_2

