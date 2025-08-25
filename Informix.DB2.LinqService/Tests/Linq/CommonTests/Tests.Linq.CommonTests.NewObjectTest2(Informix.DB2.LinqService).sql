BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.ParentID
FROM
	Parent p
		INNER JOIN Child j ON p.ParentID = j.ParentID
WHERE
	p.ParentID = 1

