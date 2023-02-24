BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ParentID DESC,
	t1.ChildID

