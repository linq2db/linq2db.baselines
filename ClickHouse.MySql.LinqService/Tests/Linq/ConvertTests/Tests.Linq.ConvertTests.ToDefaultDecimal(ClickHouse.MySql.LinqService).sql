BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDecimal128(t.MoneyValue * toDecimal64('1000', 4), 10)
FROM
	LinqDataTypes t

