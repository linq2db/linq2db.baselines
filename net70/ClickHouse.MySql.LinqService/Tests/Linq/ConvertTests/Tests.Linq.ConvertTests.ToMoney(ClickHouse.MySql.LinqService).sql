BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDecimal128(t.MoneyValue, toUInt8(10))
FROM
	LinqDataTypes t

