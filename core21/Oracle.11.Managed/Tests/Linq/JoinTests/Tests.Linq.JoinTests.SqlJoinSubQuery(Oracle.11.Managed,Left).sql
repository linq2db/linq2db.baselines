BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT 
	p_1.ParentID, 
	r.ChildID
FROM
	( 
		SELECT 
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0 AND ROWNUM <= :take
	) p_1
		LEFT JOIN Child r ON p_1.ParentID = r.ParentID

