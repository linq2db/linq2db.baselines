BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT 
	cp.ParentID, 
	c_1.ChildID
FROM
	Parent cp
		INNER JOIN ( 
			SELECT DISTINCT 
				t3.ParentID, 
				t3.ChildID
			FROM
				( 
					SELECT 
						t1.ParentID, 
						t1.ChildID
					FROM
						Child t1
					UNION
					SELECT 
						t2.ParentID, 
						t2.ChildID
					FROM
						Child t2
				) t3
		) c_1 ON c_1.ParentID = cp.ParentID
WHERE
	ROWNUM <= :take

