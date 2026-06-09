-- YDB Ydb

SELECT
	m_2.ParentID as ParentID,
	m_2.ChildID as ChildID,
	m_2.c1 % 2 as c1,
	m_2.c1 as c1_1
FROM
	(
		SELECT
			m_1.ChildID as ChildID,
			ROW_NUMBER() OVER (ORDER BY m_1.ChildID DESC) - 1l as c1,
			a_Parent.ParentID as ParentID
		FROM
			Child m_1
				LEFT JOIN Parent a_Parent ON m_1.ParentID = a_Parent.ParentID
		WHERE
			a_Parent.ParentID IS NOT NULL AND m_1.ParentID > 0
	) m_2
ORDER BY
	m_2.ChildID DESC

-- YDB Ydb

SELECT
	m_2.ParentID as ParentID,
	m_2.ChildID as ChildID,
	m_2.c1 % 2 as c1,
	m_2.c1 as c1_1
FROM
	(
		SELECT
			m_1.ChildID as ChildID,
			ROW_NUMBER() OVER (ORDER BY m_1.ChildID DESC) - 1l as c1,
			a_Parent.ParentID as ParentID
		FROM
			Child m_1
				LEFT JOIN Parent a_Parent ON m_1.ParentID = a_Parent.ParentID
		WHERE
			a_Parent.ParentID IS NOT NULL AND m_1.ParentID > 0
	) m_2
ORDER BY
	m_2.ChildID DESC

