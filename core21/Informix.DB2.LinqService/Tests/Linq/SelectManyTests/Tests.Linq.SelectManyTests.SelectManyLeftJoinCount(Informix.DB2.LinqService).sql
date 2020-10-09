BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	Parent p
		LEFT JOIN Child o ON p.ParentID = o.ParentID

