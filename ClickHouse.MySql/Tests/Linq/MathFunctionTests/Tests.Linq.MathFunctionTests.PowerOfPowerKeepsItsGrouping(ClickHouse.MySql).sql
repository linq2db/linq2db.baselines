-- ClickHouse.MySql ClickHouse
SELECT
	Power(toFloat64(2), Power(toFloat64(p.ID % 3 + 1), toFloat64(2)))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	Power(Power(toFloat64(p.ID % 3 + 1), toFloat64(2)), toFloat64(3))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	Power(toDecimal128('2', 10), toDecimal128(Power(toFloat64(toDecimal128(p.ID % 3 + 1, 10)), toFloat64(toDecimal128('2', 10))), 10))
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	Power(toFloat64(2), Power(toFloat64(p.Value1 % 3 + 1), toFloat64(2)))
FROM
	Parent p
WHERE
	p.Value1 IS NOT NULL
ORDER BY
	p.ParentID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

