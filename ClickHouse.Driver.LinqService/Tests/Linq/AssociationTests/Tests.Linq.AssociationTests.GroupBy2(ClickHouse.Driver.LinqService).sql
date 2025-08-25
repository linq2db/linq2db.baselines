BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	m_1.ParentID,
	t2.ParentID_1,
	t2.ChildID
FROM
	(
		SELECT DISTINCT
			a_Parent1.ParentID as ParentID
		FROM
			Child t1
				INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID
	) m_1
		INNER JOIN (
			SELECT
				a_Parent1_1.ParentID as ParentID,
				d.ParentID as ParentID_1,
				d.ChildID as ChildID
			FROM
				Child d
					INNER JOIN Parent a_Parent1_1 ON d.ParentID = a_Parent1_1.ParentID
		) t2 ON m_1.ParentID = t2.ParentID

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	a_Parent1.ParentID
FROM
	Child t1
		INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID
GROUP BY
	a_Parent1.ParentID

