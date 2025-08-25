BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID + 1
FROM
	Parent p
		INNER JOIN Child t1 ON p.ParentID = t1.ParentID + 1

