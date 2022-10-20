BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	roundBankers(p.MoneyValue, toInt32(2))
FROM
	LinqDataTypes p
WHERE
	roundBankers(p.MoneyValue, toInt32(2)) <> toDecimal64('0', 10) AND
	roundBankers(p.MoneyValue, toInt32(2)) <> toDecimal64('7', 10)

