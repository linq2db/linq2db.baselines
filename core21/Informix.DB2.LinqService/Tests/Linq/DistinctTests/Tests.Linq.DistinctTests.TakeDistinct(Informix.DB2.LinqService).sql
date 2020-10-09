BeforeExecute
-- Informix.DB2 Informix

SELECT DISTINCT
	t1.ParentID
FROM
	( 
		SELECT FIRST 4 
			ch.ParentID
		FROM
			Child ch
		ORDER BY
			ch.ParentID
	) t1

