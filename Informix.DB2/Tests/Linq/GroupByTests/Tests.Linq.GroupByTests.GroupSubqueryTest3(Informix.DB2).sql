-- Informix.DB2 Informix

SELECT
	pmp.ParentID
FROM
	Child pmp
GROUP BY
	pmp.ParentID

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

