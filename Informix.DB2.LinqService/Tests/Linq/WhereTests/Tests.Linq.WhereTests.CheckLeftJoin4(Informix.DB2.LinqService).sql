BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		LEFT JOIN Child ch ON p.ParentID = ch.ParentID AND ch.ParentID > 0
WHERE
	ch.ParentID IS NULL

