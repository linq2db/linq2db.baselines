BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	o.ParentID, 
	o.Value1, 
	cg.ParentID, 
	cg.ChildID
FROM
	Parent o
		INNER JOIN ( 
			SELECT 
				t1.ParentID, 
				t1.ChildID
			FROM
				Child t1
			WHERE
				ROWNUM <= :take
		) cg ON o.ParentID = cg.ParentID

