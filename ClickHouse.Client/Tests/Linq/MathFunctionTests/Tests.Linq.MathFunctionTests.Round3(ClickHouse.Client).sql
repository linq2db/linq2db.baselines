BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	roundBankers(p.MoneyValue, toInt32(1))
FROM
	LinqDataTypes p
WHERE
	roundBankers(p.MoneyValue, toInt32(1)) <> toDecimal64('0', 10) AND
	roundBankers(p.MoneyValue, toInt32(1)) <> toDecimal64('7', 10)

