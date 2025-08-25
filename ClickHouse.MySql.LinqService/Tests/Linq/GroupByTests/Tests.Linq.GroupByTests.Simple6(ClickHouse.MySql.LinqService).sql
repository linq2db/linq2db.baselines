BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	m_1.ParentID,
	m_1.ChildID,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID,
			t1.ChildID as ChildID
		FROM
			GrandChild t1
	) m_1
		INNER JOIN GrandChild d ON m_1.ParentID = d.ParentID AND m_1.ChildID = d.ChildID

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

