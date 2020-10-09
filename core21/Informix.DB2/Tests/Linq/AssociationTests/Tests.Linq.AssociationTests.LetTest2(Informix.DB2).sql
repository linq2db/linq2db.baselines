BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t.ParentID, 
	(
		SELECT 
			Count(*)
		FROM
			Child t1
		WHERE
			t.ParentID = t1.ParentID
	)
FROM
	Parent t

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t.ParentID, 
	(
		SELECT 
			Count(*)
		FROM
			Child t1
		WHERE
			t.ParentID = t1.ParentID
	)
FROM
	Parent t

