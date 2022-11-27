BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ParentID,
	_.Value1
FROM
	Parent _
WHERE
	_.ParentID = toInt32(3)

