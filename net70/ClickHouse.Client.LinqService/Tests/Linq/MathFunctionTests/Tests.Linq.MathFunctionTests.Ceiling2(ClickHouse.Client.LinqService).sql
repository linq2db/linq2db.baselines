BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Ceiling(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	Ceiling(p.MoneyValue) <> toDecimal64('0', 10)

