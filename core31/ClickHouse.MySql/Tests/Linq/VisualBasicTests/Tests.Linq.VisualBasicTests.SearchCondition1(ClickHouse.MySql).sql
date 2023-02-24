BeforeExecute
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
	t.BoolValue = false AND ((toInt32(t.SmallIntValue) = toInt32(5) OR toInt32(t.SmallIntValue) = toInt32(7)) OR bitOr(toInt32(t.SmallIntValue), toInt32(2)) = toInt32(10))

