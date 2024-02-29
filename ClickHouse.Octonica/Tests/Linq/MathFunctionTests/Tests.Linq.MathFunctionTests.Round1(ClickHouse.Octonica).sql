BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	roundBankers(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	roundBankers(p.MoneyValue) <> toDecimal64('0', 10)

