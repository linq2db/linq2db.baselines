BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.ParentID, 
	t1.ChildID
FROM
	Parent p
		OUTER APPLY ( 
			SELECT DISTINCT 
				c_1.ParentID, 
				c_1.ChildID
			FROM
				Child c_1
			WHERE
				p.ParentID = c_1.ParentID AND c_1.ParentID > 0
			ORDER BY
				c_1.ChildID
			FETCH NEXT :take ROWS ONLY
		) t1

