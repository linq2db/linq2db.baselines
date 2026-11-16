-- ClickHouse.Octonica ClickHouse
SELECT
	Power(toFloat64(2), Power(toFloat64(p.ID % 3 + 1), toFloat64(2)))
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
	Power(Power(toFloat64(p.ID % 3 + 1), toFloat64(2)), toFloat64(3))
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

