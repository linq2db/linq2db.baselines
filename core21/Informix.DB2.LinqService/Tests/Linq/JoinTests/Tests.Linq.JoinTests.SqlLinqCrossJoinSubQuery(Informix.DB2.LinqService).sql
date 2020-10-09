BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p_1.ParentID, 
	c_1.ChildID
FROM
	( 
		SELECT FIRST 10 
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
	) p_1,
	( 
		SELECT FIRST 10 
			t1.ChildID
		FROM
			Child t1
	) c_1

