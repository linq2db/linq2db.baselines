BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.ParentID, 
	r.ChildID
FROM
	Parent p
		LEFT JOIN Child r ON p.ParentID = r.ParentID

