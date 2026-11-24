-- ClickHouse.Driver ClickHouse
SELECT
	bitNot(p.ID)
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
	bitNot(toInt64(p.ID))
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
	bitNot(p.SmallIntValue)
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
	bitOr(p.ID, -5)
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
	bitXor(toInt64(p.ID), -6)
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
	bitAnd(p.ID, -3)
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
	bitAnd(p.ID, 6) - 10
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
	negate(bitAnd(p.ID, 6))
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
	bitAnd(toInt64(p.ID), p.ID - 10)
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

