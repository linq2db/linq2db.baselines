BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Sign(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	Sign(p.MoneyValue) <> toInt32(0)

