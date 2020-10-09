BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.ID1, 
	t1.ID2, 
	t1.ID3
FROM
	( 
		SELECT 
			c_1.ParentID as ID1, 
			c_1.ChildID as ID2, 
			c_1.ParentID + 1 as ID3
		FROM
			Child c_1
	) t1
UNION ALL
SELECT 
	t2.ID2, 
	t2.ID2, 
	t2.ID3
FROM
	( 
		SELECT 
			c_2.ParentID as ID2, 
			Nvl(c_2.Value1, 0) as ID3
		FROM
			Parent c_2
	) t2

