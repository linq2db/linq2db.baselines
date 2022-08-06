BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toBool(t.MoneyValue - toDecimal64('4.5', 10))
FROM
	LinqDataTypes t
WHERE
	toBool(t.MoneyValue - toDecimal64('4.5', 10)) = false

