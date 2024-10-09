BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toInt32(toDecimal128(t.MoneyValue, toUInt8(4)))
FROM
	LinqDataTypes t

