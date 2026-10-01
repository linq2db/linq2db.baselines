-- ClickHouse.Driver ClickHouse
SELECT
	roundBankers(p.MoneyValue, p.ID % 2 + 2)
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)

