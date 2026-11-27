-- ClickHouse.Driver ClickHouse
SELECT
	bitAnd(toUInt64(p.ID), toUInt64(6))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	bitOr(toUInt64(p.ID), toUInt64(6))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	bitXor(toUInt64(p.ID), toUInt64(6))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.Driver ClickHouse
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

