-- ClickHouse.Octonica ClickHouse

SELECT
	toDecimal128(p.MoneyValue, 10)
FROM
	LinqDataTypes p
WHERE
	toDecimal128(p.MoneyValue, 10) > toDecimal128('0', 10)

