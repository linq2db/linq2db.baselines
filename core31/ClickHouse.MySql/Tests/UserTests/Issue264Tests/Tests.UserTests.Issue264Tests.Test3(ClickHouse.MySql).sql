BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	MONTH(selectParam.DateTimeValue)
FROM
	LinqDataTypes selectParam
GROUP BY
	MONTH(selectParam.DateTimeValue)

