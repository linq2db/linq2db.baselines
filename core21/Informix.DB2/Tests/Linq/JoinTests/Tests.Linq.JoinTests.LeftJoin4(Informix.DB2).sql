BeforeExecute
-- Informix.DB2 Informix

SELECT 
	key_data_result.ParentID, 
	y1.ParentID, 
	y1.ChildID
FROM
	( 
		SELECT DISTINCT
			x5.ParentID, 
			x5.Value1
		FROM
			Parent x5
				LEFT JOIN Child y2 ON x5.ParentID = y2.ParentID AND x5.Value1 = y2.ParentID
		WHERE
			x5.ParentID = 1 AND x5.Value1 IS NOT NULL
	) key_data_result
		INNER JOIN Child y1 ON (y1.ParentID = key_data_result.ParentID AND y1.ParentID = key_data_result.Value1)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	x5.ParentID, 
	x5.Value1
FROM
	Parent x5
		LEFT JOIN Child y2 ON x5.ParentID = y2.ParentID AND x5.Value1 = y2.ParentID
WHERE
	x5.ParentID = 1 AND x5.Value1 IS NOT NULL
ORDER BY
	x5.ParentID

