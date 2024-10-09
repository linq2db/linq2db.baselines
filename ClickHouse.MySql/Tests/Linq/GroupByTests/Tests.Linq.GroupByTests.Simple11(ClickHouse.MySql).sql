BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Key_1,
	m_1.Key_2,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID + 1 as Key_1,
			t1.ChildID as Key_2
		FROM
			GrandChild t1
	) m_1
		INNER JOIN GrandChild d ON m_1.Key_1 = d.ParentID + 1 AND m_1.Key_2 = d.ChildID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t2.ParentID,
	t2.ChildID
FROM
	(
		SELECT
			t1.ParentID + 1 as ParentID,
			t1.ChildID as ChildID
		FROM
			GrandChild t1
	) t2
GROUP BY
	t2.ParentID,
	t2.ChildID

