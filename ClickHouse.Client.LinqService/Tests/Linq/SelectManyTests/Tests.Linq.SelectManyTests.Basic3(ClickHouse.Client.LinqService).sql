BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ParentID + toInt32(1)
FROM
	Parent cp,
	Child _
WHERE
	_.ParentID > toInt32(0)

