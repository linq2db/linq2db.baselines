BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	ROUND(t.MoneyValue, 1) <> toDecimal64('0', 4)

