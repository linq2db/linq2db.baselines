BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	roundBankers(toFloat64(t.MoneyValue), 1) <> toFloat64(0)

