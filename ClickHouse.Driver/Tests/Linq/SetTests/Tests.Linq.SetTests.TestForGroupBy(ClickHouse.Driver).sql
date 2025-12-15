-- ClickHouse.Driver ClickHouse

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (2)

-- ClickHouse.Driver ClickHouse

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (3)

