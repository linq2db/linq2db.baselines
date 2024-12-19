BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toInt32(p.MoneyValue) > 0

