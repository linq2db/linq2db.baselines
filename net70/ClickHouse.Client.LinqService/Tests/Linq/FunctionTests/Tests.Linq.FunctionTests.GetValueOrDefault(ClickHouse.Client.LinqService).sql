BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Value1
FROM
	Parent p
WHERE
	Coalesce(p.Value1, toInt32(0)) > toInt32(0)

