BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(_.ParentID)
FROM
	Parent _
WHERE
	_.ParentID < toInt32(0)

