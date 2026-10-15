-- ClickHouse.Octonica ClickHouse
SELECT
	roundBankers(p.MoneyValue, 5)
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)
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

