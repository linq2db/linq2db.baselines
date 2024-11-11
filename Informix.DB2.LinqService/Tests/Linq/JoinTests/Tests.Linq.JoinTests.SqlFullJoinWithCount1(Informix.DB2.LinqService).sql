BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	CASE
		WHEN COUNT(t1.ParentID) = COUNT(right_1.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Parent t1
		FULL JOIN Parent right_1 ON right_1.ParentID = t1.ParentID

