-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	c_1.ParentID as ParentID_1,
	c_1.ParentID as ParentID_2,
	c_1.ChildID
FROM
	Parent t1
		LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
UNION DISTINCT
SELECT
	p.ParentID as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ParentID_2,
	toInt32(NULL) as ChildID
FROM
	Parent p

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

