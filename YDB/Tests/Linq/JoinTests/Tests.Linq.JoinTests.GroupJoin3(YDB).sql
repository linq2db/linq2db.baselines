-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	m_1.ParentID = 2

-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t
WHERE
	t.ParentID = 2

