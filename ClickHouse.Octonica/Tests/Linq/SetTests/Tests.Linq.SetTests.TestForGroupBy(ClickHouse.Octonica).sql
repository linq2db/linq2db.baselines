BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (3)

