-- YDB Ydb
SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	m_1.ParentID = 1

-- YDB Ydb
SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	p.ParentID = 1

-- YDB Ydb
SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	m_1.ParentID = 1

-- YDB Ydb
SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	p.ParentID = 1

