BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		INNER JOIN Parent pp ON p.ParentID = pp.ParentID
ORDER BY
	p.ParentID DESC

