-- ClickHouse.MySql ClickHouse

SELECT
	p_1.ParentID,
	c_1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
		LIMIT 10
	) p_1
		RIGHT JOIN Child c_1 ON p_1.ParentID = c_1.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

