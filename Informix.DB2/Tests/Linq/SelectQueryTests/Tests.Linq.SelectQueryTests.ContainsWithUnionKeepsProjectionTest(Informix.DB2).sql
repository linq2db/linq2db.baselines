-- Informix.DB2 Informix

SELECT
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
				SELECT
					p_1.ParentID
				FROM
					Parent p_1
				WHERE
					p_1.ParentID <= 2
				UNION
				SELECT
					c_1.ParentID
				FROM
					Child c_1
				WHERE
					c_1.ParentID >= 3
			) t1
		WHERE
			p.ParentID = t1.ParentID
	)
ORDER BY
	p.ParentID

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

