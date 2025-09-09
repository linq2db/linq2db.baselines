BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDecimal128(t.MoneyValue * toDecimal64('1000', 4), 4)
FROM
	LinqDataTypes t

