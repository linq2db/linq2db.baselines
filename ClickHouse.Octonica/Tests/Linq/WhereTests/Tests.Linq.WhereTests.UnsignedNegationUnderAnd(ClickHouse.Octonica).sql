-- ClickHouse.Octonica ClickHouse
SELECT
	bitAnd(toUInt32(p.ID), bitNot(toUInt32(p.ID + 4)))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

