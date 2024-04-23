BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(_.ParentID)
FROM
	Parent _
WHERE
	_.ParentID < 0

