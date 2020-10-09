BeforeExecute
-- Informix.DB2 Informix

SELECT 
	x.ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	x.ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID
GROUP BY
	x.ParentID

