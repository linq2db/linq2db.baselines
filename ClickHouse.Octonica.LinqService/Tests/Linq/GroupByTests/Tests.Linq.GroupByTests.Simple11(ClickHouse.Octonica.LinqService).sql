BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

