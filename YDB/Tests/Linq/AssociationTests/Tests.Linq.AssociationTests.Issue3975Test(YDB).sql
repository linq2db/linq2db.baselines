-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			Parent t1
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID
FROM
	Parent t1
LIMIT 1

