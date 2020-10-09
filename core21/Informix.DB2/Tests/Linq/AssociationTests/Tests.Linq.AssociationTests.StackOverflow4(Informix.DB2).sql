BeforeExecute
-- Informix.DB2 Informix

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			Parent t1
		WHERE
			p.ParentID = t1.Value1
	)
FROM
	Parent p

