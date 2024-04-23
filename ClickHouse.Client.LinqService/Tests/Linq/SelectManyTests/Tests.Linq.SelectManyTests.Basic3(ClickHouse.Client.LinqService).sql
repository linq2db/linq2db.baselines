BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.ParentID + 1
FROM
	Parent p,
	Child _
WHERE
	_.ParentID + 1 > 1

