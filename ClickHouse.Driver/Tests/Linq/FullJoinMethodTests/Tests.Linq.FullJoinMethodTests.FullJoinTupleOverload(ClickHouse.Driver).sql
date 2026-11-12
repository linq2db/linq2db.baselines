-- ClickHouse.Driver ClickHouse
SELECT
	p_1.ParentID,
	p_1.Value1,
	t1.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
		WHERE
			p.ParentID < 3
	) p_1
		FULL JOIN (
			SELECT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 1
		) t1 ON p_1.ParentID = t1.ParentID

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

