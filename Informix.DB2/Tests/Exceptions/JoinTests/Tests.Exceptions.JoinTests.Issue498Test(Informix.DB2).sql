-- Informix.DB2 Informix

SELECT
	x.ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID

-- Informix.DB2 Informix

SELECT
	g_1.ParentID
FROM
	Parent g_1
		INNER JOIN Child y ON g_1.ParentID = y.ParentID
GROUP BY
	g_1.ParentID

