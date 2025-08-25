BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDecimal128(t.MoneyValue * toDecimal64('1000', 4), 10)
FROM
	LinqDataTypes t

