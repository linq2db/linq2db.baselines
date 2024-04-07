BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	ch.GrandChildID
FROM
	GrandChild ch
WHERE
	ch.ParentID = toInt32(3) AND ch.ChildID = toInt32(31)

