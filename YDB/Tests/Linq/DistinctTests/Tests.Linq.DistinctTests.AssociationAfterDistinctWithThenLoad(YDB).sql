-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			a_Parent.ParentID as ParentID
		FROM
			Child t1
				LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT DISTINCT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
ORDER BY
	ChildID

-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			a_Parent.ParentID as ParentID
		FROM
			Child t1
				LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

