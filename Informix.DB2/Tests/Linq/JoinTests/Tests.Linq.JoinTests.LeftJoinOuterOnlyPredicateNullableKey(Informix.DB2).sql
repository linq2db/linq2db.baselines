-- Informix.DB2 Informix
SELECT
	c_1.ChildID,
	p.ParentID
FROM
	Child c_1
		LEFT JOIN Parent p ON p.Value1 = c_1.ParentID AND c_1.ChildID <> 11

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

