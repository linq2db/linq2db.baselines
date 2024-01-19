BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ParentID
FROM
	Parent _
WHERE
	_.ParentID = toInt32(1)

