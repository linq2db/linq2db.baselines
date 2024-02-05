BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = toInt32(1)

