BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Abs(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	Abs(p.MoneyValue) > toDecimal64('0', 10)

