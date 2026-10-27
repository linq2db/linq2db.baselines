-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	toInt32(NULL) as c1,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ChildID
FROM
	Parent p
INTERSECT DISTINCT
SELECT
	p_1.ParentID as ParentID,
	t1.ParentID as c1,
	t1.ParentID as ParentID_1,
	t1.ChildID as ChildID
FROM
	Parent p_1
		LEFT JOIN (
			SELECT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID) as rn
			FROM
				Child c_1
		) t1 ON t1.ParentID = p_1.ParentID AND t1.rn = 1

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

