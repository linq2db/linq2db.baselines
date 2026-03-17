-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ParentID,
	m_1.ChildID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID + 1 as ParentID,
			t1.ChildID as ChildID
		FROM
			GrandChild t1
	) m_1
		INNER JOIN GrandChild d ON m_1.ParentID = d.ParentID + 1 AND m_1.ChildID = d.ChildID

-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	t1.ParentID + 1,
	t1.ChildID
FROM
	GrandChild t1

