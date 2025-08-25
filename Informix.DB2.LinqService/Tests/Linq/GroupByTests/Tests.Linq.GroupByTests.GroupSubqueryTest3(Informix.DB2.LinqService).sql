BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	pmp.ParentID
FROM
	Child pmp
GROUP BY
	pmp.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

