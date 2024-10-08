BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Key_1,
	m_1.Key_2,
	d.ParentID,
	d.ChildID,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as Key_1,
			t1.ChildID as Key_2
		FROM
			GrandChild t1
	) m_1
		INNER JOIN GrandChild d ON m_1.Key_1 = d.ParentID AND m_1.Key_2 = d.ChildID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

