-- Informix.DB2 Informix

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	Parent p
WHERE
	p.ParentID = c_1.ParentID AND (p.Value1 NOT IN (1, 2, 3) OR p.Value1 IS NULL)

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

