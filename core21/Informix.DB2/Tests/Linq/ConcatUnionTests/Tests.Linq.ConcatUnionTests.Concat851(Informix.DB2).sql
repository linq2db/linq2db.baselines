BeforeExecute
-- Informix.DB2 Informix

SELECT 
	c_1.ParentID, 
	c_1.ParentID, 
	c_1.ParentID
FROM
	Parent c_1
UNION ALL
SELECT 
	t1.ID1, 
	t1.ID2, 
	t1.ID3
FROM
	( 
		SELECT 
			c_2.ParentID as ID1, 
			c_2.ParentID + 1 as ID2, 
			c_2.ChildID as ID3
		FROM
			Child c_2
	) t1

