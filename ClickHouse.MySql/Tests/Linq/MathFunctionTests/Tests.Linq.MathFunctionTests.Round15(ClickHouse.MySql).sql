-- ClickHouse.MySql ClickHouse
SELECT
	ROUND(p.MoneyValue, 5) + p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)
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
	roundBankers(p.MoneyValue, 5) + p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)
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

