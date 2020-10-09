BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.ID3, 
	t1.ID2, 
	t1.ID3
FROM
	( 
		SELECT 
			c_1.ParentID as ID3, 
			Nvl(c_1.Value1, 0) as ID2
		FROM
			Parent c_1
	) t1
UNION ALL
SELECT 
	t2.ID1, 
	t2.ID2, 
	t2.ID3
FROM
	( 
		SELECT 
			c_2.ParentID as ID1, 
			c_2.ParentID + 1 as ID2, 
			c_2.ChildID as ID3
		FROM
			Child c_2
	) t2

