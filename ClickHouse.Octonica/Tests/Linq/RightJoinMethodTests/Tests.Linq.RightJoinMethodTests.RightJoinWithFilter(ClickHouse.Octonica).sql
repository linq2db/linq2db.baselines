-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.ParentID,
	p_1.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
		WHERE
			p.ParentID >= 4
	) p_1
		RIGHT JOIN Child c_1 ON p_1.ParentID = c_1.ParentID

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

