-- YDB Ydb

SELECT
	s.ParentID as ParentID,
	c_1.ParentID as ParentID_1,
	c_1.ChildID as ChildID
FROM
	Parent s
		LEFT JOIN Child c_1 ON s.ParentID = c_1.ParentID
WHERE
	c_1.ChildID < 0 OR c_1.ParentID IS NULL

-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	Parent m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

