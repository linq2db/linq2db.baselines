BeforeExecute
-- ClickHouse.Client ClickHouse

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
	t.BoolValue = false AND (t.SmallIntValue = toInt16(5) OR t.SmallIntValue = toInt16(7) OR bitOr(toInt32(t.SmallIntValue), toInt16(2)) = 10)

