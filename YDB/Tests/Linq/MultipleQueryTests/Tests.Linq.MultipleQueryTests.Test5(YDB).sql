-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.Value1 as Value1
FROM
	(
		SELECT DISTINCT
			a_Parent.ParentID as ParentID
		FROM
			Child ch
				LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
	) m_1
		INNER JOIN Parent d ON d.ParentID = m_1.ParentID

-- YDB Ydb

SELECT
	a_Parent.ParentID as ParentID
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
ORDER BY
	ch.ChildID

