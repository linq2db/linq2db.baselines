BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDecimal128(t.MoneyValue, toUInt8(10))
FROM
	LinqDataTypes t
WHERE
	toDecimal128(t.MoneyValue, toUInt8(10)) > toDecimal64('0', 10)

