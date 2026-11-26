-- ClickHouse.Driver ClickHouse
SELECT
	bitAnd(toUInt32(p.ID), toUInt32(4294967289))
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
	bitOr(toUInt32(p.ID), toUInt32(2147483649))
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
	bitXor(toUInt32(p.ID), toUInt32(4294967295))
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
	bitAnd(toUInt32(p.ID), toUInt32(2147483648))
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
	bitAnd(t.U, toUInt32(4294967289))
FROM
	UnsignedColumnTable t
ORDER BY
	t.Id

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.U
FROM
	UnsignedColumnTable t1

