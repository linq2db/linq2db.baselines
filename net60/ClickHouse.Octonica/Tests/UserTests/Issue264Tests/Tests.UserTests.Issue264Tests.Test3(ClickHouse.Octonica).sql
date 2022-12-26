BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	MONTH(selectParam.DateTimeValue)
FROM
	LinqDataTypes selectParam
GROUP BY
	MONTH(selectParam.DateTimeValue)

