BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT SKIP 1 FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 1
ORDER BY
	p.ParentID

