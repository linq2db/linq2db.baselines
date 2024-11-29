BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDecimal128(t.MoneyValue * toDecimal64('1000', 4), toUInt8(10))
FROM
	LinqDataTypes t

