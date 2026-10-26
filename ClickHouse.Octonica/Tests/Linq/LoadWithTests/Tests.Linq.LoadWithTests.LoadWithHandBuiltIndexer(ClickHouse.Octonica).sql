-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.ParentID,
	m_1.ParentID_1,
	d_1.ParentID,
	d_1.ChildID
FROM
	(
		SELECT DISTINCT
			a_Parent.ParentID as ParentID,
			t1.ParentID as ParentID_1
		FROM
			(
				SELECT
					parent_1.ParentID as ParentID
				FROM
					Parent parent_1
				WHERE
					parent_1.ParentID < 2
				LIMIT 1
			) t1
				INNER JOIN Child d ON t1.ParentID = d.ParentID
				LEFT JOIN Parent a_Parent ON d.ParentID = a_Parent.ParentID
	) m_1
		INNER JOIN Child d_1 ON m_1.ParentID = d_1.ParentID

-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	(
		SELECT
			parent_1.ParentID as ParentID
		FROM
			Parent parent_1
		WHERE
			parent_1.ParentID < 2
		LIMIT 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
		LEFT JOIN Parent a_Parent ON d.ParentID = a_Parent.ParentID

-- ClickHouse.Octonica ClickHouse
SELECT
	parent_1.ParentID,
	parent_1.Value1
FROM
	Parent parent_1
WHERE
	parent_1.ParentID < 2
LIMIT 1

