BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDecimal128(t.MoneyValue * toDecimal64('1000', 10), toUInt8(4))
FROM
	LinqDataTypes t

