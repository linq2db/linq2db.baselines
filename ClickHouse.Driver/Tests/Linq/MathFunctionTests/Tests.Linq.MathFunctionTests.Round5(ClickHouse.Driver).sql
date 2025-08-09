BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	ROUND(t.MoneyValue) <> toDecimal64('0', 4)

