BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.ChildID
FROM
	Parent p_1
		OUTER APPLY ( 
			SELECT 
				p.ChildID
			FROM
				Child p
			FETCH NEXT :take ROWS ONLY
		) t1

