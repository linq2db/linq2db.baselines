BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Truncate(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	Truncate(p.MoneyValue) <> toDecimal64('0.1', 10)

