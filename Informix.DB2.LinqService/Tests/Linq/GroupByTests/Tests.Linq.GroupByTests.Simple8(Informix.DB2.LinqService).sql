BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ChildID
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

