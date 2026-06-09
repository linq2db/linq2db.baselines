-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			a_Parent1.ParentID as ParentID
		FROM
			Child t1
				INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID
	) m_1
		CROSS JOIN Child d
		INNER JOIN Parent a_Parent1_1 ON d.ParentID = a_Parent1_1.ParentID AND m_1.ParentID = a_Parent1_1.ParentID

-- YDB Ydb

SELECT DISTINCT
	a_Parent1.ParentID as ParentID
FROM
	Child t1
		INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID

