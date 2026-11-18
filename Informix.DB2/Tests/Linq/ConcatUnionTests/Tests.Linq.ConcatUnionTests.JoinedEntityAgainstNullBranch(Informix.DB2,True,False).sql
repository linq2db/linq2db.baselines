-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	c_1.ParentID,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent t1
		LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
UNION
SELECT
	p.ParentID,
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	Parent p

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

