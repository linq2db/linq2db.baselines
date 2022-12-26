BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	MONTH(selectParam.DateTimeValue),
	YEAR(selectParam.DateTimeValue),
	toInt32(1)
FROM
	LinqDataTypes selectParam
GROUP BY
	MONTH(selectParam.DateTimeValue),
	YEAR(selectParam.DateTimeValue)
UNION DISTINCT
SELECT
	toInt32(_.SmallIntValue),
	toInt32(_.SmallIntValue),
	toInt32(3)
FROM
	LinqDataTypes _
UNION DISTINCT
SELECT
	YEAR(_1.DateTimeValue),
	YEAR(_1.DateTimeValue),
	toInt32(2)
FROM
	LinqDataTypes _1

