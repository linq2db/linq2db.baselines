-- ClickHouse.Driver ClickHouse
SELECT
	Power(toFloat64(p.ID * 2), toFloat64(2))
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
	Power(toFloat64(p.ID + 1), toFloat64(2))
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
	Power(toFloat64(100 - p.ID), toFloat64(2))
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
	Power(toFloat64(negate(p.ID)), toFloat64(2))
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
	negate(Power(toFloat64(p.ID), toFloat64(2)))
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
	Power(toFloat64(p.ID), toFloat64(-1))
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

