BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	sumOrNull(t1.MoneyValue),
	YEAR(t1.Key_1),
	MONTH(t1.Key_1)
FROM
	(
		SELECT
			toDateTime64(concat(leftPadUTF8(toString(YEAR(selectParam.DateTimeValue)), toUInt32(toInt32(4)), '0'), '-', leftPadUTF8(toString(MONTH(selectParam.DateTimeValue)), toUInt32(toInt32(2)), '0'), '-01'), toUInt8(7)) as Key_1,
			selectParam.MoneyValue as MoneyValue
		FROM
			LinqDataTypes selectParam
	) t1
GROUP BY
	t1.Key_1

