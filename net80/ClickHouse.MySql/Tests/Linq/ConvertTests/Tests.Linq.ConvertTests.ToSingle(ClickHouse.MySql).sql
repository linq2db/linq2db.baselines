BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toFloat32(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toFloat32(t.MoneyValue) > toFloat32(0)

