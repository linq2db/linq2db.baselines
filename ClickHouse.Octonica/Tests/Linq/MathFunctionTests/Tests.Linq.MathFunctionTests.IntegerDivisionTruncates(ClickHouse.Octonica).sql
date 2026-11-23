-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(p.ID * 7 + 1, 2)
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

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(p.ID * -7 - 1, 2)
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

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(p.ID * 7 + 1, p.ID - 100)
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

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(toInt64(p.ID) * 9 + toInt64(2), toInt64(4))
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

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(toUInt32(p.ID) * 7 + toUInt32(1), toUInt32(2))
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

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(toUInt64(p.ID) * 9 + toUInt64(2), toUInt64(4))
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

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(p.ID * 7 + 1, 2)
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

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(p.ID * 9 + 2, 4)
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

-- ClickHouse.Octonica ClickHouse
SELECT
	negate(p.ID * 7 + 1)
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

-- ClickHouse.Octonica ClickHouse
SELECT
	p.ID
FROM
	LinqDataTypes p
WHERE
	intDiv(p.ID * 7 + 1, 2) * 2 = p.ID * 7 + 1
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

-- ClickHouse.Octonica ClickHouse
SELECT
	toString(intDiv(p.ID * 7 + 1, 2))
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

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(p.ID) / toFloat64(2)
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

-- ClickHouse.Octonica ClickHouse
SELECT
	toDecimal128(toFloat64(toDecimal128(p.ID, 10)) / toDecimal32('2', 0), 10)
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

