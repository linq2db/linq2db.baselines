BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1
DECLARE @take_1 Int32
SET     @take_1 = 1

SELECT 
	CASE WHEN EXISTS(
		SELECT 
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = p.ParentID AND c_1.ChildID > -100
	) THEN 1 ELSE 0 END, 
	(
		SELECT 
			Count(*)
		FROM
			Child c_2
		WHERE
			c_2.ParentID = p.ParentID AND c_2.ChildID > -100
	), 
	t1.First1, 
	t2.ParentID, 
	t2.ChildID
FROM
	Parent p
		OUTER APPLY ( 
			SELECT 
				c_3.ParentID as First1
			FROM
				Child c_3
			WHERE
				c_3.ParentID = p.ParentID AND c_3.ChildID > -100 AND
				c_3.ParentID > 0
			ORDER BY
				c_3.ChildID
			FETCH NEXT :take ROWS ONLY
		) t1
		OUTER APPLY ( 
			SELECT 
				c_4.ParentID, 
				c_4.ChildID
			FROM
				Child c_4
			WHERE
				c_4.ParentID = p.ParentID AND c_4.ChildID > -100
			ORDER BY
				c_4.ChildID
			FETCH NEXT :take_1 ROWS ONLY
		) t2

