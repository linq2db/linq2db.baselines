-- ClickHouse.Octonica ClickHouse
SELECT
	ROUND(p.MoneyValue, 5) + p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)

-- ClickHouse.Octonica ClickHouse
SELECT
	roundBankers(p.MoneyValue, 5) + p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)

