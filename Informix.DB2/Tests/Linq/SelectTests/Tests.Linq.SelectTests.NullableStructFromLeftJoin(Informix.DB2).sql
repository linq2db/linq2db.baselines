-- Informix.DB2 Informix
SELECT
	p.ParentID,
	c_1.ChildID,
	c_1.ParentID
FROM
	Parent p
		LEFT JOIN Child c_1 ON c_1.ParentID = p.ParentID

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

