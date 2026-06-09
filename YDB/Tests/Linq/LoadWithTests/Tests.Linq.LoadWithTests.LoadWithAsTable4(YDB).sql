-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID,
	a_Parent.ParentID as ParentID_2,
	a_Parent.Value1 as Value1
FROM
	(
		SELECT
			t.ParentID as ParentID
		FROM
			Parent t
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
		LEFT JOIN Parent a_Parent ON d.ParentID = a_Parent.ParentID

-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t
LIMIT 1

