-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT
			a_Parent.ParentID as ParentID
		FROM
			Child t1
				LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
LIMIT 1

