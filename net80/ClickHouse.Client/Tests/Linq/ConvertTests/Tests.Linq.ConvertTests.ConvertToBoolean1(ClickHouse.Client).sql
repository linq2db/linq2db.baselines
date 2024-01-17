BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toBool(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toBool(t.MoneyValue) = true

