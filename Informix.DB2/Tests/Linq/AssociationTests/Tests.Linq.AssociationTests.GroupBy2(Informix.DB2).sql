-- Informix.DB2 Informix

SELECT
	sub.ParentID_1,
	sub.ParentID,
	sub.ChildID
FROM
	(
		SELECT
			d.ParentID,
			m_1.ParentID as ParentID_1,
			d.ChildID
		FROM
			(
				SELECT DISTINCT
					a_Parent1.ParentID
				FROM
					Child t1
						INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID
			) m_1,
			Child d
	) sub
		INNER JOIN Parent a_Parent1_1 ON sub.ParentID = a_Parent1_1.ParentID AND sub.ParentID_1 = a_Parent1_1.ParentID

-- Informix.DB2 Informix

SELECT DISTINCT
	a_Parent1.ParentID
FROM
	Child t1
		INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID

