BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10
DECLARE @take_1 Int32
SET     @take_1 = 10

SELECT 
	p_1.ParentID, 
	c_1.ChildID
FROM
	( 
		SELECT 
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0 AND ROWNUM <= :take
	) p_1,
	( 
		SELECT 
			t1.ChildID
		FROM
			Child t1
		WHERE
			ROWNUM <= :take_1
	) c_1

