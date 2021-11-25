BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID + 1
FROM
	Parent cp
		INNER JOIN Child t1 ON 1=1
WHERE
	t1.ParentID > 0

