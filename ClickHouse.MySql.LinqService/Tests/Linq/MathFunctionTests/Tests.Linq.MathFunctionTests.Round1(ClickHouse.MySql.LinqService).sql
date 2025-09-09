BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	roundBankers(t.MoneyValue) <> toDecimal64('0', 4)

