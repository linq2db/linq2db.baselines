-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	t1.ParentID as ParentID_1,
	t1.ParentID as ParentID_2,
	t1.ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID) as rn
			FROM
				Child c_1
		) t1 ON t1.ParentID = p.ParentID AND t1.rn = 1
UNION DISTINCT
SELECT
	p_1.ParentID as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ParentID_2,
	toInt32(NULL) as ChildID
FROM
	Parent p_1

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

