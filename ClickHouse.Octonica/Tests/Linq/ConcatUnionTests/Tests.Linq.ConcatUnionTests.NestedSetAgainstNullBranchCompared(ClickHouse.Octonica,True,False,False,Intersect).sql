-- ClickHouse.Octonica ClickHouse
SELECT
	t2.ParentID,
	t2.ParentID_1,
	t2.ParentID_2,
	t2.ChildID
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			c_1.ParentID as ParentID_1,
			c_1.ParentID as ParentID_2,
			c_1.ChildID as ChildID
		FROM
			Parent t1
				LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
		UNION ALL
		SELECT
			p.ParentID as ParentID,
			toInt32(NULL) as ParentID_1,
			toInt32(NULL) as ParentID_2,
			toInt32(NULL) as ChildID
		FROM
			Parent p
	) t2
INTERSECT DISTINCT
SELECT
	p_1.ParentID as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ParentID_2,
	toInt32(NULL) as ChildID
FROM
	Parent p_1

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

