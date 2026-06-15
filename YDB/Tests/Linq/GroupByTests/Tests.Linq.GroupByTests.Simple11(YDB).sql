-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	m_1.ChildID as ChildID,
	d.ChildID as ChildID_1
FROM
	(
		SELECT DISTINCT
			t1.ParentID + 1 as ParentID,
			t1.ChildID as ChildID
		FROM
			GrandChild t1
	) m_1
		INNER JOIN GrandChild d ON m_1.ParentID = d.ParentID + 1 AND m_1.ChildID = d.ChildID

-- YDB Ydb

SELECT DISTINCT
	t1.ParentID + 1 as ParentID,
	t1.ChildID as ChildID
FROM
	GrandChild t1

