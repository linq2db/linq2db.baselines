BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID,
	keyParam.GrandChildID
FROM
	GrandChild keyParam
WHERE
	keyParam.ParentID = toInt32(1) AND keyParam.ChildID = toInt32(11)

