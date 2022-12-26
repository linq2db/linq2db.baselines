BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	sumOrNull(selectParam.MoneyValue),
	YEAR(selectParam.DateTimeValue),
	MONTH(selectParam.DateTimeValue)
FROM
	LinqDataTypes selectParam
GROUP BY
	MONTH(selectParam.DateTimeValue),
	YEAR(selectParam.DateTimeValue)

