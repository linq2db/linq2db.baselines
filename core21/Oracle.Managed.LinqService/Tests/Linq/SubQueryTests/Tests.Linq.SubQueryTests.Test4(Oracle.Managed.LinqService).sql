BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.ChildID
FROM
	Parent p
		OUTER APPLY ( 
			SELECT 
				ch.ChildID
			FROM
				Child ch
			WHERE
				ch.ParentID = p.ParentID AND ch.ChildID = ch.ParentID * 10 + 1
			FETCH NEXT :take ROWS ONLY
		) t1
WHERE
	p.ParentID <> 5

