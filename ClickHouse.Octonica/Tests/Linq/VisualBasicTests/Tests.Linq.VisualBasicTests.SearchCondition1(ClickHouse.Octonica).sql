BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	t.BoolValue = false AND (toInt32(t.SmallIntValue) = 5 OR toInt32(t.SmallIntValue) = 7 OR bitOr(toInt32(t.SmallIntValue), 2) = 10)

