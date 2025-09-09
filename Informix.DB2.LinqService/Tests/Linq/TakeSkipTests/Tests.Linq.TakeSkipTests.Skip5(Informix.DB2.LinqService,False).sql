BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT SKIP 3
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC,
	t1.ParentID + 1

