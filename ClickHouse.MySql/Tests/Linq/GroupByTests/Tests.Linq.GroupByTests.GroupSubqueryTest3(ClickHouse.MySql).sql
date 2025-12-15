-- ClickHouse.MySql ClickHouse

SELECT
	pmp.ParentID
FROM
	Child pmp
GROUP BY
	pmp.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

