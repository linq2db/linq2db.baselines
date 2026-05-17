-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID < 4
ORDER BY
	c_1.ChildID

-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID < 4

