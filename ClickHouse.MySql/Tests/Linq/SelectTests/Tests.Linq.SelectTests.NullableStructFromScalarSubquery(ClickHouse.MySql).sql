-- ClickHouse.MySql ClickHouse
SELECT
	m_1.ParentID,
	t1.ChildID,
	t1.ParentID
FROM
	Parent m_1
		LEFT JOIN (
			SELECT
				c_1.ChildID as ChildID,
				c_1.ParentID as ParentID,
				ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID) as rn
			FROM
				Child c_1
		) t1 ON t1.ParentID = m_1.ParentID AND t1.rn = 1

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

