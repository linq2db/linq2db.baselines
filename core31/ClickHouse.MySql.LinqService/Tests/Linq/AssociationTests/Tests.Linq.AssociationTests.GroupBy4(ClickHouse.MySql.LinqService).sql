BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	YEAR(selectParam.DateTimeValue)
FROM
	LinqDataTypes selectParam
GROUP BY
	YEAR(selectParam.DateTimeValue)

