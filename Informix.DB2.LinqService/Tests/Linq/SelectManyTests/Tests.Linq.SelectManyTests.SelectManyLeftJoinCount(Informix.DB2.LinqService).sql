BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Parent t1
		LEFT JOIN Child c_1 ON t1.ParentID = c_1.ParentID

