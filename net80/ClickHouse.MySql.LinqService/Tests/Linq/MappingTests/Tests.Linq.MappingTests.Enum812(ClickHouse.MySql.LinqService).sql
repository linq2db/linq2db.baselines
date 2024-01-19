BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	LinqDataTypes p
WHERE
	p.ID = toInt32(1)

