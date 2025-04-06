BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID > 1

