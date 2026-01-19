-- Informix.DB2 Informix

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT DISTINCT
			p.ParentID,
			p.Value1
		FROM
			Parent p
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					(
						SELECT DISTINCT
							a_Parent.ParentID
						FROM
							Child c_1
								LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
					) t1
				WHERE
					p.ParentID = t1.ParentID
			)
	) t2
ORDER BY
	t2.ParentID

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

