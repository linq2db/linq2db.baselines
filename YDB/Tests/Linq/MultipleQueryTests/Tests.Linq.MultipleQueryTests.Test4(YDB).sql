-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
ORDER BY
	m_1.ParentID

-- YDB Ydb

SELECT
	p.ParentID as ParentID
FROM
	Parent p
ORDER BY
	p.ParentID

