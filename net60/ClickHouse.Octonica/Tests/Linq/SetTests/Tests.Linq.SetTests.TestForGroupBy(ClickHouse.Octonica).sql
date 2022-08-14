BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (toInt32(3))

