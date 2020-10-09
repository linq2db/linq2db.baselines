BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p
		LEFT JOIN ( 
			SELECT 
				1 + c_1.ParentID as ParentID, 
				c_1.ChildID
			FROM
				GrandChild c_1
			WHERE
				c_1.ParentID > 0
		) lj1 ON p.ParentID = lj1.ParentID
WHERE
	(lj1.ParentID IS NULL AND lj1.ChildID IS NULL) AND
	(lj1.ParentID IS NULL AND lj1.ChildID IS NULL)

