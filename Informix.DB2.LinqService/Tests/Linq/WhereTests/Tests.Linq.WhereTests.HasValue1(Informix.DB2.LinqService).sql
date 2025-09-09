BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.Value1 IS NOT NULL

