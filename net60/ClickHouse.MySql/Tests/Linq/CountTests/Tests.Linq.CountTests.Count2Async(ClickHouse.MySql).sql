BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID > toInt32(2)

