-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	NOT t.BoolValue AND t.MoneyValue > toDecimal64('1', 4) AND
	(t.SmallIntValue = toInt16(5) OR t.SmallIntValue = toInt16(7) OR t.SmallIntValue = toInt16(8))

