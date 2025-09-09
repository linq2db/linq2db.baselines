BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	g_1.ParentID
FROM
	Parent g_1
		INNER JOIN Child y ON g_1.ParentID = y.ParentID
GROUP BY
	g_1.ParentID

