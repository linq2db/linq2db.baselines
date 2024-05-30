BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDecimal128(t.MoneyValue, toUInt8(4))
FROM
	LinqDataTypes t

