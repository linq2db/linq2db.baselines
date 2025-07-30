BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toUInt64(p.MoneyValue) > toUInt64(0)

