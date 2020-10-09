BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take_1 Int32
SET     @take_1 = 1
DECLARE @take Int32
SET     @take = 10

SELECT 
	t1.ParentID, 
	t1.ChildID
FROM
	Parent p
		OUTER APPLY ( 
			SELECT 
				c_1.ParentID, 
				c_1.ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID = p.ParentID
			ORDER BY
				c_1.ChildID
			FETCH NEXT :take_1 ROWS ONLY
		) t1
FETCH NEXT :take ROWS ONLY

