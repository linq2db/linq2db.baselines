BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDecimal128(t.MoneyValue * toDecimal64('1000', 4), 4)
FROM
	LinqDataTypes t

