BeforeExecute
-- Informix.DB2 Informix

SELECT
	Max(t1.ParentID)
FROM
	Child t1
GROUP BY
	t1.ChildID

