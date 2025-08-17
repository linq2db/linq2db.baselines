BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	f.ParentID,
	f.Value1
FROM
	Parent f
WHERE
	f.ParentID >= 1 AND f.ParentID <= 4

