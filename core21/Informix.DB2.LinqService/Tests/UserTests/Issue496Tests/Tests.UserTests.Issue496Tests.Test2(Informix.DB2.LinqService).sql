BeforeExecute
-- Informix.DB2 Informix

SELECT 
	key_data_result.ParentID, 
	detail.ChildID, 
	detail.ParentID
FROM
	( 
		SELECT DISTINCT
			t1.ParentID
		FROM
			Parent t1
	) key_data_result
		INNER JOIN Child detail ON key_data_result.ParentID = detail.ParentID

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.ParentID
FROM
	Parent t1

