-- ClickHouse.Octonica ClickHouse

SELECT
	t.MoneyValue * toDecimal64('1000', 4)
FROM
	LinqDataTypes t

