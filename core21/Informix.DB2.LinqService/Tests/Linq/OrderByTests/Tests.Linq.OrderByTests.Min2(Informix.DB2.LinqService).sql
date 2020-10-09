BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Min(t1.ParentID)
FROM
	( 
		SELECT FIRST 3 
			p.ParentID
		FROM
			Parent p
		ORDER BY
			p.ParentID
	) t1

