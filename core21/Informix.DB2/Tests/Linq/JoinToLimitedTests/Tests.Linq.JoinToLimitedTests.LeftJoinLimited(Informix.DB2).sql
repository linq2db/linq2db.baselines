BeforeExecute
-- Informix.DB2 Informix

SELECT 
	o.ParentID, 
	o.Value1, 
	cg.ParentID, 
	cg.ChildID
FROM
	Parent o
		LEFT JOIN ( 
			SELECT FIRST 1 
				t1.ParentID, 
				t1.ChildID
			FROM
				Child t1
		) cg ON o.ParentID = cg.ParentID

