BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toInt64(p.MoneyValue) > toInt64(0)

