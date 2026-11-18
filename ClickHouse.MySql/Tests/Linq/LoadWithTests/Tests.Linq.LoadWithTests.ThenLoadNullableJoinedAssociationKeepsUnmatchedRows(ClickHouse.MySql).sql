-- ClickHouse.MySql ClickHouse
SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID,
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			Parent t1
	) m_1
		INNER JOIN Child d ON d.ParentID = m_1.ParentID
		LEFT JOIN (
			SELECT
				a_LinkedParent.ChildID as ChildID,
				a_LinkedParent.rn as rn,
				p.ParentID as ParentID,
				p.Value1 as Value1
			FROM
				(
					SELECT
						g_1.ParentID as ParentID,
						ROW_NUMBER() OVER (PARTITION BY g_1.ChildID ORDER BY g_1.ChildID) as rn,
						g_1.ChildID as ChildID
					FROM
						GrandChild g_1
				) a_LinkedParent
					INNER JOIN Parent p ON a_LinkedParent.ParentID = p.ParentID
		) t2 ON t2.ChildID = d.ChildID AND t2.rn = 1
ORDER BY
	d.ChildID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

