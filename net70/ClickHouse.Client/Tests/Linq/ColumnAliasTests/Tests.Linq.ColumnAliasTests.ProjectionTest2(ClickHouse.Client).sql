BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID > toInt32(1)

