-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ChildID

-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ChildID

