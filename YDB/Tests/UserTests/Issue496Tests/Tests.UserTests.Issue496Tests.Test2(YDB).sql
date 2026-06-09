-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ChildID as ChildID,
	d.ParentID as ParentID_1
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	p.ParentID as ParentID
FROM
	Parent p

