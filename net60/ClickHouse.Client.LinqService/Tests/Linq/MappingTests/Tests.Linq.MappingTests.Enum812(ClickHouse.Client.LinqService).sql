BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	LinqDataTypes p
WHERE
	p.ID = toInt32(1)

