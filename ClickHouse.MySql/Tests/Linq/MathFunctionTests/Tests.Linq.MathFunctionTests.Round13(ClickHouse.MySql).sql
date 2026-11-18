-- ClickHouse.MySql ClickHouse
SELECT
	roundBankers(p.MoneyValue, 5)
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> toDecimal64('0', 4)

