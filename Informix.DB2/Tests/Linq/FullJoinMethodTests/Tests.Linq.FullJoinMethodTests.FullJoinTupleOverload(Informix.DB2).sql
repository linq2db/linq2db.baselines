-- Informix.DB2 Informix
SELECT
	p_1.ParentID,
	p_1.Value1,
	t1.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			p.ParentID,
			p.Value1
		FROM
			Parent p
		WHERE
			p.ParentID < 3
	) p_1
		FULL JOIN (
			SELECT
				c_1.ParentID,
				c_1.ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 1
		) t1 ON p_1.ParentID = t1.ParentID

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

