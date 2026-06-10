-- Informix.DB2 Informix

SELECT
	a.ParentID
FROM
	Parent a
		INNER JOIN Child t ON EXISTS(
			SELECT
				*
			FROM
				GrandChild c_1
			WHERE
				c_1.ChildID = t.ChildID AND a.ParentID = c_1.ParentID
		)

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

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID,
	t1.GrandChildID
FROM
	GrandChild t1

