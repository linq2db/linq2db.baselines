-- Informix.DB2 Informix

SELECT SKIP 3
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID

