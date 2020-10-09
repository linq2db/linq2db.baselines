BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t2.ParentID, 
	t2.ChildID
FROM
	Parent p
		OUTER APPLY ( 
			SELECT 
				t1.ParentID, 
				t1.ChildID
			FROM
				Child t1
			WHERE
				p.ParentID = t1.ParentID
			ORDER BY
				t1.ChildID
			FETCH NEXT :take ROWS ONLY
		) t2

