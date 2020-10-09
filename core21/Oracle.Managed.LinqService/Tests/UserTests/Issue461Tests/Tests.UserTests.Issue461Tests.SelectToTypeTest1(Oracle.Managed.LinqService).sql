BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Id_1, 
	t1.Id
FROM
	Parent sep
		OUTER APPLY ( 
			SELECT 
				l.ParentID + 1 as Id, 
				l.ParentID as Id_1
			FROM
				Child l
			FETCH NEXT :take ROWS ONLY
		) t1

