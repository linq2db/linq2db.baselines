-- ClickHouse.Driver ClickHouse

SELECT
	pmp.ParentID
FROM
	Child pmp
GROUP BY
	pmp.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

